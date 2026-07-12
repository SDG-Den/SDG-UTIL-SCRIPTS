# SDG-UTIL-SCRIPTS Documentation Plan

## Current Status
The previous plan was stale — it referenced `sdgvolume`, `sdgbrightness`, `sdgquick`, `sdgrecord` and `docs/SDG-UTIL-SCRIPTS/more-info.md`, none of which exist. The actual content is the help system and OS-wide documentation.

This repo has TWO documentation responsibilities:
1. **Its own tools** (6 CLI commands) — docs created in `docs/SDG-UTIL-SCRIPTS/` (7 files, all complete)
2. **OS-wide end-user documentation** (SDG-DOC-* suites) — 25 files across 5 suites, all complete

## Source-Verified Inventory

### Part A: Repo's Own Tools (6 CLI commands)
| Command | Script | Purpose |
|---------|--------|---------|
| sdg-tldr / tldrtui | `cmd-help.sh` | fzf-based TLDR command lookup (~118 commands in cmds.list) |
| helptui | `help.sh` | Topic-based help browser (25 topic files) |
| document / documentation | `documentation.sh` | Documentation link browser (27 curated links → Firefox) |
| reference | `references.sh` | mangoWM config reference viewer (4 reference lists: references, mangodispatchers, mangoipc, DMSipc) |
| colortui | `colors.sh` | Matugen Material You color palette previewer |
| projects / git-projects | `project-select.sh` | Project directory selector (scans ~/projects/, opens in VS Code via mmsg) |

### Part B: OS-Wide End-User Documentation (5 doc suites, 25 files)
| Doc Suite | Files | Status |
|-----------|-------|--------|
| SDG-DOC-GETTING-STARTED | 5 (README + 000-welcome through 004-functions) | All complete |
| SDG-DOC-DESKTOP-USAGE | 5 (README + 101-settings through 105-layouts) | All complete |
| SDG-DOC-TERMINAL | 7 (README + 201-navigation through 207-additional) | All complete |
| SDG-DOC-CUSTOMIZATION | 6 (README + 301-dms through 405-monitors) | All complete |
| SDG-DOC-DEVELOPMENT | 3 (README + 501-scripting-basics + 502-flow-control) | All complete |

### Part C: Reference Data Files
| File | Entries | Content |
|------|---------|---------|
| `cmds.list` | ~118 | Common Linux commands by category |
| `DMSipc.list` | ~244 | DMS IPC command reference |
| `mangodispatchers.list` | ~71 | mangoWM keybind dispatchers |
| `mangoipc.list` | ~19 | mmsg IPC commands |
| `references.list` | ~217 | mangoWM config options |

## Docs System (`docs/`)
**Deploy location**: `~/.local/docs/`

### Part A: Repo's Own Tools — `docs/SDG-UTIL-SCRIPTS/`
| # | Topic | Description | Priority |
|---|-------|-------------|----------|
| 1 | Help System Overview | Architecture: cmd-help.sh, help.sh, references.sh — how they relate | High |
| 2 | sdg-tldr / tldrtui | TLDR command lookup with fzf + bat, cmds.list format | High |
| 3 | helptui | Topic-based help browser, 25 topics, adding new topics | High |
| 4 | document / documentation | Documentation link browser, 27 links, adding new links | Medium |
| 5 | reference | Reference sheet viewer, 4 reference lists, format | Medium |
| 6 | colortui | Material You color palette previewer | Low |
| 7 | projects / git-projects | Project directory scanner, fzf picker, VS Code launch | Medium |

### Part B: OS-Wide Doc Suites — `docs/SDG-DOC-*/`
These are core SDG-OS documentation and should CONTINUE being split (distributed across packages).

All 8 previously-WIP files are now complete with substantive content.

### Existing Content
| File | Notes |
|------|-------|
| `docs/SDG-DOC-*/` (25 files) | All 5 doc suites complete — Getting Started, Desktop Usage, Terminal, Customization, Development |
| `docs/SDG-UTIL-SCRIPTS/` (7 files) | All 7 repo tool topics created and complete |

## Tips System (`tips/`)
**Deploy location**: `~/.local/tips/SDG-UTIL-SCRIPTS/`

### Existing Tips
| # | Tip | Notes |
|---|-----|-------|
| 1-7 | In `tips/SDG-UTIL-SCRIPTS/tips.list` | All 7 tips exist. Covers sdg-docs, tldrtui, helptui, document, reference, colortui, projects — no additions needed (the 3 planned tips were already covered by existing entries). |

## Implementation Notes
- CRITICAL: Previous plan was stale — the 4 scripts (sdgvolume, sdgbrightness, sdgquick, sdgrecord) do NOT exist. Removed from the plan.
- The `docs/SDG-DOC-*/` suites are SDG-OS-wide docs, NOT specific to this repo. They continue being split across packages. All 25 files across 5 suites are complete.
- Repo-specific docs are in `docs/SDG-UTIL-SCRIPTS/` with `nn-topic-name.md` format — all 7 files created and complete.
- Tips.list has all 7 tips — no additions needed.
