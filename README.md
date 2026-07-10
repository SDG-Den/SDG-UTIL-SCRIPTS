# SDG-UTIL-SCRIPTS

Utility scripts for SDG-OS — audio, brightness, quick settings, screen recording, help system, and documentation browser.

## Description

SDG-UTIL-SCRIPTS provides a suite of daily-driver tools: hardware controls (volume, brightness, quick settings), screen recording, and an extensive help/documentation system with command TLDRs, topic guides, config reference sheets, Material You color preview, and a git project launcher.

## Features

### Hardware Controls
- **`sdgvolume`** — volume up/down, mute, mic toggle, mic mute (uses wpctl)
- **`sdgbrightness`** — brightness up/down (uses brightnessctl)
- **`sdgquick`** — quick settings: Bluetooth, networking, display settings, cloud, USB eject
- **`sdgrecord`** — screen recording with area selection and auto-save naming

### Help System
- **`sdg-tldr` / `tldrtui`** — fzf browser of ~120 common commands with tldr/man output
- **`helptui`** — topic-based help browser (24 topics: Getting Started, Desktop, Terminal, Customization, Development)
- **`documentation`** — 27 curated documentation links (MangoWM, DMS, Ghostty, Arch Wiki, etc.)
- **`reference`** — 217-entry mangoWM config option reference
- **`colortui`** — Material You color palette preview from Matugen
- **`git-projects`** — scan `~/projects/` for git repos, browse and open in VS Code

## CLI Usage

```bash
sdgvolume up|down|mute|micmute
sdgbrightness up|down
sdgquick                    # Bluetooth, networking, display, USB eject
sdgrecord                   # Screen recording with area select
sdg-tldr                    # Command help browser
helptui                     # Topic-based help
documentation               # Documentation link browser
reference                   # Config option reference
colortui                    # Color palette preview
git-projects                # Git project launcher
```

## Installation

```bash
sdgpkg install sdg-util
```

## Dependencies

- `fzf`, `bat` — interactive menus and previews
- `firefox` — documentation links
- `tldr` (tealdeer) — command summaries
- `eza` — file listing
- `micro` — text editor
- `wpctl` (PipeWire) — volume control
- `brightnessctl` — brightness control
- `wf-recorder` — screen recording

## Related Packages

- **SDG-MANGO-CORE** — references help system in keybinds
- **SDG-TERM** — aliases for help tools
- **SDG-MANGO-HELPERS** — complementary config editing tools
