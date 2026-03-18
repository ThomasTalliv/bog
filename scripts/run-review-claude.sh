#!/bin/bash
# =============================================================================
# Felt 64 — Claude Code Review Runner
# Kører review-agenter via Claude Code CLI
# =============================================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MANUSCRIPT="$REPO_ROOT/felt-64-komplet.md"
AGENTS_DIR="$REPO_ROOT/agents"
REVIEWS_DIR="$REPO_ROOT/reviews"
SCRIPTS_DIR="$REPO_ROOT/scripts"
CHUNKS_DIR="$REVIEWS_DIR/.chunks"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

log_info()  { echo -e "${BLUE}[INFO]${NC} $1"; }
log_ok()    { echo -e "${GREEN}[OK]${NC} $1"; }
log_warn()  { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# =============================================================================
# Claude Code agent runner
# =============================================================================

run_claude_agent() {
    local agent_prompt_file="$1"
    local input_file="$2"
    local output_file="$3"
    local agent_name="$4"
    local extra_context="${5:-}"

    local system_prompt
    system_prompt=$(cat "$agent_prompt_file")

    local input_text
    input_text=$(cat "$input_file")

    local full_prompt="$system_prompt

---

## MANUSKRIPT:

$input_text"

    if [ -n "$extra_context" ] && [ -f "$extra_context" ]; then
        local context_text
        context_text=$(cat "$extra_context")
        full_prompt="$full_prompt

---

## REVIEW-KOMMENTARER:

$context_text"
    fi

    log_info "Kører agent: $agent_name..."

    # Brug Claude Code CLI
    echo "$full_prompt" | claude -p --output-format text > "$output_file" 2>/dev/null

    if [ $? -eq 0 ]; then
        log_ok "$agent_name færdig → $output_file"
    else
        log_error "$agent_name fejlede"
        return 1
    fi
}

# =============================================================================
# Fase 1: Parallel review
# =============================================================================

run_fase1_claude() {
    log_info "========================================="
    log_info "FASE 1: REVIEW via Claude Code"
    log_info "========================================="

    local output_dir="$REVIEWS_DIR/fase1-review"
    mkdir -p "$output_dir"

    # Først: opdel manuskript
    if [ ! -d "$CHUNKS_DIR" ] || [ -z "$(ls -A "$CHUNKS_DIR" 2>/dev/null)" ]; then
        log_info "Opdeler manuskript..."
        python3 "$SCRIPTS_DIR/split-manuscript.py" "$MANUSCRIPT" "$CHUNKS_DIR"
    fi

    # Find prolog-chunk (første fil)
    local prolog_chunk
    prolog_chunk=$(ls "$CHUNKS_DIR"/*.md | head -1)

    # Agent 1: Hook-specialist (kun prolog)
    run_claude_agent \
        "$AGENTS_DIR/fase1/01-hook-specialist.md" \
        "$prolog_chunk" \
        "$output_dir/01-hook-specialist-review.md" \
        "Hook-specialist" &
    local pid1=$!

    # Agent 2-5: Hele manuskriptet (parallelt)
    run_claude_agent \
        "$AGENTS_DIR/fase1/02-strukturredaktoer.md" \
        "$MANUSCRIPT" \
        "$output_dir/02-strukturredaktoer-review.md" \
        "Strukturredaktør" &
    local pid2=$!

    run_claude_agent \
        "$AGENTS_DIR/fase1/03-narrativ-redaktoer.md" \
        "$MANUSCRIPT" \
        "$output_dir/03-narrativ-redaktoer-review.md" \
        "Narrativ-redaktør" &
    local pid3=$!

    run_claude_agent \
        "$AGENTS_DIR/fase1/04-maalgruppe-vagthund.md" \
        "$MANUSCRIPT" \
        "$output_dir/04-maalgruppe-vagthund-review.md" \
        "Målgruppe-vagthund" &
    local pid4=$!

    run_claude_agent \
        "$AGENTS_DIR/fase1/05-fakta-konsistens.md" \
        "$MANUSCRIPT" \
        "$output_dir/05-fakta-konsistens-review.md" \
        "Fakta-tjekker" &
    local pid5=$!

    # Vent på alle
    local failed=0
    wait $pid1 || { log_error "Hook-specialist fejlede"; failed=$((failed+1)); }
    wait $pid2 || { log_error "Strukturredaktør fejlede"; failed=$((failed+1)); }
    wait $pid3 || { log_error "Narrativ-redaktør fejlede"; failed=$((failed+1)); }
    wait $pid4 || { log_error "Målgruppe-vagthund fejlede"; failed=$((failed+1)); }
    wait $pid5 || { log_error "Fakta-tjekker fejlede"; failed=$((failed+1)); }

    if [ $failed -eq 0 ]; then
        log_ok "Fase 1 komplet! Alle 5 reviews i: $output_dir/"
    else
        log_warn "Fase 1 delvist komplet. $failed agent(er) fejlede."
    fi
}

# =============================================================================
# Syntese
# =============================================================================

run_syntese_claude() {
    log_info "========================================="
    log_info "SYNTESE: Samler review-resultater"
    log_info "========================================="

    local reviews_dir="$REVIEWS_DIR/fase1-review"
    local output_file="$REVIEWS_DIR/syntese/review-syntese.md"
    mkdir -p "$(dirname "$output_file")"

    # Saml alle reviews
    local all_reviews=""
    for review in "$reviews_dir"/*.md; do
        if [ -f "$review" ]; then
            all_reviews="$all_reviews

---
## $(basename "$review")
$(cat "$review")"
        fi
    done

    local syntese_prompt
    syntese_prompt=$(cat "$AGENTS_DIR/koordinator-syntese.md")

    echo "$syntese_prompt

---

## ALLE REVIEWS:

$all_reviews" | claude -p --output-format text > "$output_file" 2>/dev/null

    log_ok "Syntese komplet → $output_file"
}

# =============================================================================
# Fase 2: Sekventiel redigering
# =============================================================================

run_fase2_claude() {
    log_info "========================================="
    log_info "FASE 2: REDIGERING via Claude Code"
    log_info "========================================="

    local output_dir="$REVIEWS_DIR/fase2-redigering"
    local syntese="$REVIEWS_DIR/syntese/review-syntese.md"
    mkdir -p "$output_dir"

    if [ ! -f "$syntese" ]; then
        log_error "Syntese mangler. Kør: $0 syntese"
        exit 1
    fi

    local prolog_chunk
    prolog_chunk=$(ls "$CHUNKS_DIR"/*.md | head -1)

    # Sekventielt: A → B → C
    run_claude_agent \
        "$AGENTS_DIR/fase2/01-aabnings-arkitekten.md" \
        "$prolog_chunk" \
        "$output_dir/01-aabnings-arkitekten-output.md" \
        "Åbnings-arkitekten" \
        "$syntese"

    run_claude_agent \
        "$AGENTS_DIR/fase2/02-flow-kirurgen.md" \
        "$MANUSCRIPT" \
        "$output_dir/02-flow-kirurgen-output.md" \
        "Flow-kirurgen" \
        "$syntese"

    run_claude_agent \
        "$AGENTS_DIR/fase2/03-stemme-polerer.md" \
        "$MANUSCRIPT" \
        "$output_dir/03-stemme-polerer-output.md" \
        "Stemme-polerer" \
        "$syntese"

    log_ok "Fase 2 komplet! Redigeringer i: $output_dir/"
}

# =============================================================================
# Main
# =============================================================================

usage() {
    echo "Brug: $0 [kommando]"
    echo ""
    echo "Claude Code-specifik runner til Felt 64 review-system."
    echo "Kræver: claude CLI installeret og konfigureret."
    echo ""
    echo "Kommandoer:"
    echo "  fase1      Kør 5 review-agenter parallelt"
    echo "  syntese    Saml og prioritér review-resultater"
    echo "  fase2      Kør 3 ekspert-redaktører sekventielt"
    echo "  all        Kør alt: fase1 → syntese → fase2"
    echo "  status     Vis status"
    echo ""
}

show_status() {
    echo ""
    echo "═══════════════════════════════════════"
    echo "  Felt 64 Review System — Status"
    echo "═══════════════════════════════════════"
    echo ""
    echo "📋 Fase 1 — Review:"
    for name in "01-hook-specialist" "02-strukturredaktoer" "03-narrativ-redaktoer" "04-maalgruppe-vagthund" "05-fakta-konsistens"; do
        local f="$REVIEWS_DIR/fase1-review/${name}-review.md"
        if [ -f "$f" ] && [ -s "$f" ] && ! grep -q "Placeholder" "$f" 2>/dev/null; then
            echo "  ✅ $name"
        else
            echo "  ⏳ $name"
        fi
    done
    echo ""
    echo "🔗 Syntese:"
    local sf="$REVIEWS_DIR/syntese/review-syntese.md"
    if [ -f "$sf" ] && [ -s "$sf" ] && ! grep -q "Placeholder" "$sf" 2>/dev/null; then
        echo "  ✅ review-syntese.md"
    else
        echo "  ⏳ Ikke lavet endnu"
    fi
    echo ""
    echo "✏️  Fase 2 — Redigering:"
    for name in "01-aabnings-arkitekten" "02-flow-kirurgen" "03-stemme-polerer"; do
        local f="$REVIEWS_DIR/fase2-redigering/${name}-output.md"
        if [ -f "$f" ] && [ -s "$f" ] && ! grep -q "Placeholder" "$f" 2>/dev/null; then
            echo "  ✅ $name"
        else
            echo "  ⏳ $name"
        fi
    done
    echo ""
}

main() {
    if ! command -v claude &>/dev/null; then
        log_error "Claude CLI ikke fundet. Installér: npm install -g @anthropic-ai/claude-code"
        exit 1
    fi

    case "${1:-}" in
        fase1)   run_fase1_claude ;;
        syntese) run_syntese_claude ;;
        fase2)   run_fase2_claude ;;
        all)     run_fase1_claude; run_syntese_claude; run_fase2_claude ;;
        status)  show_status ;;
        *)       usage ;;
    esac
}

main "$@"
