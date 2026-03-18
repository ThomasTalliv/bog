# Felt 64

En bog om kunstig intelligens og hvad det betyder at være menneske i det 21. århundrede.

## Om bogen

"Felt 64" tager sit navn fra skaklegenden om eksponentiel vækst — den legende der illustrerer at vi, som kongen i historien, konsekvent undervurderer hvad der sker når noget fordobles igen og igen.

Bogen er ikke en advarsel og ikke et halleluja. Den er et ærligt blik på det bræt vi sidder ved.

## Indhold

| Fil | Kapitel | Status |
|-----|---------|--------|
| `manuscript/00-forord/forord.md` | Forord: Felt 64 | ✅ |
| `manuscript/00-hvordan-kom-vi-hertil/` | Hvordan kom vi hertil? | ⏳ |
| `manuscript/00-hvad-bringer-fremtiden/` | Hvad bringer fremtiden? | ⏳ |
| `manuscript/01-sundhed-medicin/` | Kap 1: Sundhed & medicin | ⏳ |
| `manuscript/02-uddannelse/` | Kap 2: Uddannelse | ⏳ |
| `manuscript/03-arbejdslivet/` | Kap 3: Arbejdslivet | ⏳ |
| `manuscript/04-mental-sundhed/` | Kap 4: Mental sundhed | ⏳ |
| `manuscript/05-klimaet-energi/` | Kap 5: Klimaet & energi | ⏳ |
| `manuscript/06-mad-landbrug/` | Kap 6: Mad & landbrug | ⏳ |
| `manuscript/07-transport-mobilitet/` | Kap 7: Transport & mobilitet | ⏳ |
| `manuscript/08-kreativitet-kunst/` | Kap 8: Kreativitet & kunst | ⏳ |
| `manuscript/09-demokrati-politik/` | Kap 9: Demokrati & politik | ⏳ |
| `manuscript/10-intimitet-relationer/` | Kap 10: Intimitet & relationer | ⏳ |
| `manuscript/11-aldring-omsorg/` | Kap 11: Aldring & omsorg | ⏳ |
| `manuscript/12-identitet-bevidsthed/` | Kap 12: Identitet & bevidsthed | ⏳ |

## Projektstruktur

```
bog/
├── README.md                  # Dette dokument
├── STYLE_GUIDE.md             # Stilguide for alle agenter
├── PROGRESS.md                # Projektstatus og log
├── felt-64-komplet.md         # Komplet manuskript (~74.000 ord)
├── manuscript/                # Selve bogteksten (per kapitel)
├── briefs/                    # Kapitel-briefs (PM-agenten)
├── agents/                    # Agent-prompts til review-system
│   ├── fase1/                 # 5 review-agenter
│   ├── fase2/                 # 3 ekspert-redaktører
│   └── koordinator-syntese.md # Syntese-agent
├── reviews/                   # Review-output
│   ├── fase1-review/          # Output fra 5 review-agenter
│   ├── syntese/               # Prioriteret syntese
│   └── fase2-redigering/      # Output fra 3 ekspert-redaktører
├── scripts/                   # Automatisering
│   ├── run-review.sh          # Generisk runner (tilpas til LLM)
│   ├── run-review-claude.sh   # Claude Code CLI runner
│   └── split-manuscript.py    # Opdeler manuskript i kapitler
└── reference/                 # Referencemateriale
```

## Multiagent Review-system

Systemet kører i to faser med specialiserede AI-agenter:

### Fase 1: Review (5 agenter, parallelt)

| # | Agent | Fokus | Input |
|---|-------|-------|-------|
| 1 | Hook-specialist | Åbningens gribeevne (første 4.000 ord) | Prolog |
| 2 | Strukturredaktør | Arkitektur, kapitelorden, rød tråd | Hele bogen |
| 3 | Narrativ-redaktør | Cases, historier, sanselig konkrethed | Hele bogen |
| 4 | Målgruppe-vagthund | Tilgængelighed for ikke-tech-læsere | Hele bogen |
| 5 | Fakta- og konsistenstjekker | Fakta, terminologi, logik | Hele bogen |

### Syntese
Koordinator samler alle fund og prioriterer: P1 (kritisk) → P2 (væsentlig) → P3 (polish).

### Fase 2: Redigering (3 eksperter, sekventielt)

| # | Ekspert | Opgave |
|---|---------|--------|
| A | Åbnings-arkitekten | Omskriver prolog og kapitel 1-åbning |
| B | Flow-kirurgen | Overgange, gentagelser, stramning |
| C | Stemme-polerer | Sprog, tone, rytme, finish |

### Kørsel

```bash
# Via Claude Code CLI:
./scripts/run-review-claude.sh fase1     # Kør 5 reviewere parallelt
./scripts/run-review-claude.sh syntese   # Saml og prioritér fund
./scripts/run-review-claude.sh fase2     # Kør 3 redaktører sekventielt
./scripts/run-review-claude.sh all       # Kør alt
./scripts/run-review-claude.sh status    # Se status

# Generisk (tilpas run_agent() til din LLM):
./scripts/run-review.sh fase1
```

## Måltal

- Samlet: ~80.000 ord
- Per kapitel (kap 1-12): 5.500-6.500 ord
- Intro-sektioner: 3.000-4.500 ord
