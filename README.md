# SDG-UTIL-SCRIPTS

Utility scripts for SDG-OS — help system, documentation, and developer tools.

## Description

SDG-UTIL-SCRIPTS provides an extensive help/documentation system with command TLDRs, topic guides, config reference sheets, Material You color preview, and a git project launcher.

## Features

### Help System
- **`tldrtui`** — fzf browser of common commands with tldr/man output
- **`reference`** — mangoWM config option reference
- **`colortui`** — Material You color palette preview
- **`git-projects`** — scan `~/projects/` for git repos, browse and open in VS Code
- **`rgbkeys`** — RGB keyboard color bar (percentage to key mapping)

## CLI Usage

```bash
tldrtui                    # Command help browser
documentation              # Documentation link browser
reference                  # Config option reference
colortui                   # Color palette preview
git-projects               # Git project launcher
rgbkeys                    # RGB keyboard bar
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

## Related Packages

- **SDG-MANGO-CORE** — references help system in keybinds
- **SDG-TERM** — aliases for help tools
- **SDG-MANGO-HELPERS** — complementary config editing tools
