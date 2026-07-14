# SDG-UTIL-SCRIPTS

Utility scripts for SDG-OS — help system, documentation, and developer tools.

## Description

SDG-UTIL-SCRIPTS provides an extensive help/documentation system with command TLDRs, topic guides, config reference sheets, Material You color preview, and a git project launcher.

## Features

### Help System
- **`sdg-tldr`** — fzf browser of common commands with tldr/man output
- **`tldrtui`** — old alias for sdg-tldr (pending removal)
- **`helptui`** — topic-based help browser (old feature, pending removal)
- **`documentation`** — curated documentation links (MangoWM, DMS, Ghostty, Arch Wiki, etc.)
- **`reference`** — mangoWM config option reference
- **`colortui`** — Material You color palette preview from Matugen
- **`git-projects`** — scan `~/projects/` for git repos, browse and open in VS Code

## CLI Usage

```bash
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

## Related Packages

- **SDG-MANGO-CORE** — references help system in keybinds
- **SDG-TERM** — aliases for help tools
- **SDG-MANGO-HELPERS** — complementary config editing tools
