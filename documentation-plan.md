# SDG-UTIL-SCRIPTS Documentation Plan

## Current Status
One doc file exists (`docs/SDG-UTIL-SCRIPTS/more-info.md`, full documentation). No tips exist.

## Docs System (`docs/`)
**Deploy location**: `~/.local/docs/SDG-UTIL-SCRIPTS/`

### Existing Docs
| File | Topic |
|------|-------|
| docs/SDG-UTIL-SCRIPTS/more-info.md | Full documentation: all 4 scripts, usage, functionality, integration |

### Planned Doc Topics
| # | Topic | Description | Priority |
|---|-------|-------------|----------|
| 1 | Audio Controls | `sdgvolume` usage: volume, mute, mic toggle, mic mute | High |
| 2 | Brightness Controls | `sdgbrightness` usage: brightness up/down, increment config | High |
| 3 | Quick Settings | `sdgquick` usage: Bluetooth, networking, display settings, cloud, USB | High |
| 4 | Screen Recording | `sdgrecord` usage: screen capture, area select, auto-save naming | High |
| 5 | Integration Reference | How keybinds in SDG-MANGO-CORE map to these scripts | Medium |

### Implementation
- Convert existing more-info.md into focused topic files
- Follow SDG-DOCS naming convention
- Register in `install.sh` for deployment to `~/.local/docs/`

## Tips System (`tips/`)
**Deploy location**: `~/.local/tips/SDG-UTIL-SCRIPTS/`

### Planned Tips
| # | Tip | Description | Priority |
|---|-----|-------------|----------|
| 1 | Volume control | `sdgvolume` — adjust audio while retaining current ALSA card | High |
| 2 | Brightness | `sdgbrightness` — adjust screen brightness (uses brightnessctl) | High |
| 3 | Quick settings | `sdgquick` — quick bluetooth, networking, display, USB eject | High |
| 4 | Screen recording | `sdgrecord` — record screen with wf-recorder | High |
| 5 | Mic mute | `sdgvolume micmute` — toggle microphone mute | Medium |
| 6 | Record area | `sdgrecord` prompts for area selection before recording | Medium |

### Implementation
- Create `tips/SDG-UTIL-SCRIPTS/tips.list` with the above tips
- Register in `install.sh` for deployment to `~/.local/tips/`
