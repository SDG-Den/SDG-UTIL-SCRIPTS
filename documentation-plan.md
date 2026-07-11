# SDG-UTIL-SCRIPTS Documentation Plan

## Current Status
The previous plan was stale — it referenced `sdgvolume`, `sdgbrightness`, `sdgquick`, `sdgrecord` and `docs/SDG-UTIL-SCRIPTS/more-info.md`, none of which exist. The actual content is the help system and OS-wide documentation.

This repo has TWO documentation responsibilities:
1. **Its own tools** (6 CLI commands) — needs docs created in `docs/SDG-UTIL-SCRIPTS/`
2. **OS-wide end-user documentation** (SDG-DOC-* suites) — 17 files exist (complete), 8 files are WIP

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
| SDG-DOC-CUSTOMIZATION | 6 (README + 301-dms through 405-monitors) | 1 complete, 5 marked WIP |
| SDG-DOC-DEVELOPMENT | 3 (README + 501-scripting-basics + 502-flow-control) | All 3 marked WIP |

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

**WIP files that need completing:**
| Doc Suite | WIP Files |
|-----------|-----------|
| SDG-DOC-CUSTOMIZATION | 401-customizing-mango-layouts.md, 402-customizing-mango-binds.md, 403-customizing-mango-decoration.md, 404-customizing-mango-autostart.md, 405-customizing-mango-monitors.md |
| SDG-DOC-DEVELOPMENT | 501-scripting-basics.md, 502-flow-control.md |

### Existing Content
| File | Notes |
|------|-------|
| `docs/SDG-DOC-*/` (17 files) | Complete — Getting Started, Desktop Usage, Terminal |
| `docs/SDG-DOC-*/` (8 files) | WIP — Customization (5), Development (3) |
| No `docs/SDG-UTIL-SCRIPTS/` dir exists | All 7 repo tool topics need creation |

## Tips System (`tips/`)
**Deploy location**: `~/.local/tips/SDG-UTIL-SCRIPTS/`

### Existing Tips
| # | Tip | Notes |
|---|-----|-------|
| 1-7 | In `tips/SDG-UTIL-SCRIPTS/tips.list` | Already exists! Covers sdg-docs, tldrtui, helptui, document, reference, colortui, projects |

### Additional Planned Tips
| # | Tip | Priority |
|---|-----|----------|
| 8 | tldrtui (SUPER+H) for quick command examples | High |
| 9 | helptui (SUPER+SHIFT+H) for help topics | High |
| 10 | colortui to preview current Material You palette | Low |

## Implementation Notes
- CRITICAL: Previous plan was stale — the 4 scripts (sdgvolume, sdgbrightness, sdgquick, sdgrecord) do NOT exist. Removing those from the plan.
- The `docs/SDG-DOC-*/` suites are SDG-OS-wide docs, NOT specific to this repo. They continue being split across packages. Only need to complete the 8 WIP files.
- Repo-specific docs go in `docs/SDG-UTIL-SCRIPTS/` with `nn-topic-name.md` format covering the 6 actual tools
- Tips.list already exists — just needs a few additions
- Source for tool docs: the 6 scripts in `local/SDG-HELP/` and `local/SDG-UTILS/`
