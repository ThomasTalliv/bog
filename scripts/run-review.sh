#!/bin/bash
# =============================================================================
# Felt 64 — Multiagent Review System
# Kører review-agenter (Fase 1) og ekspert-redaktører (Fase 2)
# =============================================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MANUSCRIPT="$REPO_ROOT/felt-64-komplet.md"
AGENTS_DIR="$REPO_ROOT/agents"
REVIEWS_DIR="$REPO_ROOT/reviews"
SCRIPTS_DIR="$REPO_ROOT/scripts"

# Farver
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# =============================================================================
# Hjælpefunktioner
# =============================================================================

log_info()  { echo -e "${BLUE}[INFO]${NC} $1"; }
log_ok()    { echo -e "${GREEN}[OK]${NC} $1"; }
log_warn()  { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

check_prereqs() {
    if [ ! -f "$MANUSCRIPT" ]; then
        log_error "Manuskript ikke fundet: $MANUSCRIPT"
        exit 1
    fi

    local word_count
    word_count=$(wc -w < "$MANUSCRIPT")
    log_info "Manuskript: $MANUSCRIPT ($word_count ord)"
}

# =============================================================================
# Manuskript-opdeling
# =============================================================================

split_manuscript() {
    local output_dir="$REVIEWS_DIR/.chunks"
    mkdir -p "$output_dir"

    log_info "Opdeler manuskript i kapitler..."

    # Split on markdown H1 headers (# Kapitel)
    python3 "$SCRIPTS_DIR/split-manuscript.py" \
        "$MANUSCRIPT" \
        "$output_dir"

    log_ok "Manuskript opdelt i $(ls "$output_dir"/*.md 2>/dev/null | wc -l) dele"
}

# =============================================================================
# Fase 1: Review-agenter
# =============================================================================

run_fase1() {
    log_info "========================================="
    log_info "FASE 1: REVIEW (5 agenter)"
    log_info "========================================="

    local chunks_dir="$REVIEWS_DIR/.chunks"
    local output_dir="$REVIEWS_DIR/fase1-review"
    mkdir -p "$output_dir"

    # Agent 1: Hook-specialist (kun første ~4000 ord)
    log_info "[1/5] Hook-specialist — læser første 4.000 ord..."
    run_agent \
        "$AGENTS_DIR/fase1/01-hook-specialist.md" \
        "$chunks_dir/00-prolog.md" \
        "$output_dir/01-hook-specialist-review.md" \
        "hook"

    # Agenter 2-5 kører på hele manuskriptet (parallelt)
    log_info "[2/5] Strukturredaktør — læser hele bogen..."
    log_info "[3/5] Narrativ-redaktør — læser hele bogen..."
    log_info "[4/5] Målgruppe-vagthund — læser hele bogen..."
    log_info "[5/5] Fakta- og konsistenstjekker — læser hele bogen..."

    # Kør parallelt med baggrundsjobs
    run_agent "$AGENTS_DIR/fase1/02-strukturredaktoer.md" "$MANUSCRIPT" "$output_dir/02-strukturredaktoer-review.md" "struktur" &
    local pid2=$!
    run_agent "$AGENTS_DIR/fase1/03-narrativ-redaktoer.md" "$MANUSCRIPT" "$output_dir/03-narrativ-redaktoer-review.md" "narrativ" &
    local pid3=$!
    run_agent "$AGENTS_DIR/fase1/04-maalgruppe-vagthund.md" "$MANUSCRIPT" "$output_dir/04-maalgruppe-vagthund-review.md" "maalgruppe" &
    local pid4=$!
    run_agent "$AGENTS_DIR/fase1/05-fakta-konsistens.md" "$MANUSCRIPT" "$output_dir/05-fakta-konsistens-review.md" "fakta" &
    local pid5=$!

    # Vent på alle
    wait $pid2 && log_ok "Strukturredaktør færdig" || log_error "Strukturredaktør fejlede"
    wait $pid3 && log_ok "Narrativ-redaktør færdig" || log_error "Narrativ-redaktør fejlede"
    wait $pid4 && log_ok "Målgruppe-vagthund færdig" || log_error "Målgruppe-vagthund fejlede"
    wait $pid5 && log_ok "Fakta-tjekker færdig" || log_error "Fakta-tjekker fejlede"

    log_ok "Fase 1 komplet. Reviews i: $output_dir/"
}

# =============================================================================
# Syntese
# =============================================================================

run_syntese() {
    log_info "========================================="
    log_info "SYNTESE: Samler review-fund"
    log_info "========================================="

    local input_dir="$REVIEWS_DIR/fase1-review"
    local output_file="$REVIEWS_DIR/syntese/review-syntese.md"

    run_agent \
        "$AGENTS_DIR/koordinator-syntese.md" \
        "$input_dir" \
        "$output_file" \
        "syntese"

    log_ok "Syntese komplet: $output_file"
}

# =============================================================================
# Fase 2: Ekspert-redaktører (sekventielt)
# =============================================================================

run_fase2() {
    log_info "========================================="
    log_info "FASE 2: REDIGERING (3 eksperter, sekventielt)"
    log_info "========================================="

    local output_dir="$REVIEWS_DIR/fase2-redigering"
    local syntese="$REVIEWS_DIR/syntese/review-syntese.md"
    mkdir -p "$output_dir"

    if [ ! -f "$syntese" ]; then
        log_error "Review-syntese mangler. Kør fase 1 + syntese først."
        exit 1
    fi

    # Ekspert A: Åbnings-arkitekten
    log_info "[1/3] Åbnings-arkitekten — omskriver åbningen..."
    run_agent \
        "$AGENTS_DIR/fase2/01-aabnings-arkitekten.md" \
        "$REVIEWS_DIR/.chunks/00-prolog.md" \
        "$output_dir/01-aabnings-arkitekten-output.md" \
        "aabning" \
        "$syntese"

    # Ekspert B: Flow-kirurgen
    log_info "[2/3] Flow-kirurgen — fixer overgange og stramning..."
    run_agent \
        "$AGENTS_DIR/fase2/02-flow-kirurgen.md" \
        "$MANUSCRIPT" \
        "$output_dir/02-flow-kirurgen-output.md" \
        "flow" \
        "$syntese"

    # Ekspert C: Stemme-polerer
    log_info "[3/3] Stemme-polerer — sproglig finish..."
    run_agent \
        "$AGENTS_DIR/fase2/03-stemme-polerer.md" \
        "$MANUSCRIPT" \
        "$output_dir/03-stemme-polerer-output.md" \
        "stemme" \
        "$syntese"

    log_ok "Fase 2 komplet. Redigeringer i: $output_dir/"
}

# =============================================================================
# Agent-kørsel (placeholder — tilpas til din LLM-infrastruktur)
# =============================================================================

run_agent() {
    local agent_prompt="$1"
    local input_file="$2"
    local output_file="$3"
    local agent_id="$4"
    local extra_context="${5:-}"

    # Denne funktion er en placeholder.
    # Tilpas den til din foretrukne LLM-provider:
    #
    # Option A: Claude API (Anthropic)
    #   curl https://api.anthropic.com/v1/messages ...
    #
    # Option B: Claude Code CLI
    #   claude -p "$(cat $agent_prompt)" < "$input_file" > "$output_file"
    #
    # Option C: OpenAI-kompatibelt API
    #   curl https://api.openai.com/v1/chat/completions ...

    log_warn "Agent '$agent_id': Placeholder — implementér run_agent() med din LLM-provider"
    log_info "  Prompt:  $agent_prompt"
    log_info "  Input:   $input_file"
    log_info "  Output:  $output_file"

    # Opret tom output-fil som placeholder
    cat > "$output_file" << EOF
# [Placeholder] — Afventer implementering

Agent: $agent_id
Prompt: $agent_prompt
Input: $input_file
Status: Ikke kørt endnu — implementér run_agent() i scripts/run-review.sh

Se scripts/run-review-claude.sh for Claude Code-specifik implementering.
EOF
}

# =============================================================================
# Main
# =============================================================================

usage() {
    echo "Brug: $0 [kommando]"
    echo ""
    echo "Kommandoer:"
    echo "  fase1      Kør Fase 1: Review-agenter (5 parallelle)"
    echo "  syntese    Kør syntese af review-resultater"
    echo "  fase2      Kør Fase 2: Ekspert-redaktører (3 sekventielle)"
    echo "  all        Kør alt: fase1 → syntese → fase2"
    echo "  split      Opdel manuskriptet i kapitler"
    echo "  status     Vis status for reviews"
    echo ""
}

show_status() {
    log_info "Review-status:"
    echo ""
    echo "Fase 1 — Review:"
    for f in "$REVIEWS_DIR/fase1-review"/*.md; do
        [ -f "$f" ] && echo "  ✅ $(basename "$f")" || echo "  ⏳ (ingen reviews endnu)"
    done
    echo ""
    echo "Syntese:"
    [ -f "$REVIEWS_DIR/syntese/review-syntese.md" ] && echo "  ✅ review-syntese.md" || echo "  ⏳ Ikke lavet endnu"
    echo ""
    echo "Fase 2 — Redigering:"
    for f in "$REVIEWS_DIR/fase2-redigering"/*.md; do
        [ -f "$f" ] && echo "  ✅ $(basename "$f")" || echo "  ⏳ (ingen redigeringer endnu)"
    done
}

main() {
    check_prereqs

    case "${1:-}" in
        fase1)   split_manuscript; run_fase1 ;;
        syntese) run_syntese ;;
        fase2)   run_fase2 ;;
        all)     split_manuscript; run_fase1; run_syntese; run_fase2 ;;
        split)   split_manuscript ;;
        status)  show_status ;;
        *)       usage ;;
    esac
}

main "$@"
