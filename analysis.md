# SDG-UTIL-SCRIPTS Analysis

## Type
Utility Scripts + Help System + End-User Documentation Module

## Description
SDG-UTIL-SCRIPTS provides a comprehensive suite of terminal-based help tools, documentation browsers, a git project launcher, Material You color previewer, and detailed reference sheets. It is the primary help/documentation layer for the SDG-OS desktop.

## CLI Entry Points
| Command | Symlink | Script | Description |
|---------|---------|--------|-------------|
| `sdg-tldr` / `tldrtui` | `/usr/bin/sdg-tldr` | `cmd-help.sh` | Command TLDR/man viewer |
| `helptui` | (sourced) | `help.sh` | Topic-based help browser |
| `documentation` / `document` | (sourced) | `documentation.sh` | Online docs + local refs |
| `reference` | (sourced) | `references.sh` | Config reference sheets |
| `colortui` | (sourced) | `colors.sh` | Material You palette preview |
| `git-projects` / `projects` | `/usr/bin/git-projects` | `project-select.sh` | Git project launcher |

## Usage
After installation via `sdgpkg install sdg-util`, the following commands become available:

### Command Help (sdg-tldr)
```bash
sdg-tldr          # Opens fzf list of ~120 common commands
tldrtui           # Same as above
```
Select a command (e.g., `ls (eza)`, `grep`, `git`) to see its `tldr` output. Press Enter to view the full `man` page.

### Topic Help Browser (helptui)
```bash
helptui           # Browse 24 help topics
```
Covers: Getting Started, Desktop Usage, Terminal basics, Customization, and Development topics. Uses fzf + bat for preview. Press Enter to read the full topic.

### Documentation Browser
```bash
documentation     # Opens fzf menu of 27 documentation links
document          # Same, shorter alias
```
Includes: MangoWM docs, DMS docs, Ghostty reference, CachyOS/Arch wiki, and 4 local reference sheets.

### Config Reference Sheets
```bash
reference         # Browse mangoWM config options
```
Interactive fzf browser over the 217-entry reference list. Covers input, decoration, layouts, binds, monitors, window rules, etc.

### Color Palette Preview
```bash
colortui          # Display current Material You color palette
```
Reads Matugen-generated colors from `~/.local/state/quickshell/user/generated/colors.json` and renders them as colored terminal blocks.

### Git Project Launcher
```bash
git-projects      # Browse and open git projects
projects          # Same, shorter alias
```
Scans `~/projects/` (or configured base dir in `~/.config/projectdir.state`) for git repos up to 5 levels deep. Shows fzf picker with file listing + README preview. Opens selected project in VS Code via `mmsg dispatch spawn_shell`.

## Directory Structure
```
SDG-UTIL-SCRIPTS/
├── README.md                     # Minimal stub ("SDG-UTIL-SCRIPTS\nupdate")
├── .gitignore                    # Ignores __pycache__/
├── install.sh / install-old.sh / update.sh / update-old.sh
├── uninstall.sh / uninstall-old.sh
├── local/
│   ├── SDG-HELP/                 # Help system
│   │   ├── cmd-help.sh           # Command TLDR/man viewer
│   │   ├── cmd-help-old.sh       # Legacy TLDR viewer
│   │   ├── help.sh               # Topic help browser
│   │   ├── help-old.sh           # Legacy help browser
│   │   ├── references.sh         # FZF reference sheet browser
│   │   ├── references-old.sh     # Legacy reference sheet browser
│   │   ├── cmds.list             # 120 command entries
│   │   ├── DMSipc.list           # 244 DMS IPC commands
│   │   ├── mangodispatchers.list # 71 mangoWM dispatchers
│   │   ├── mangoipc.list         # 19 mangoWM IPC commands
│   │   ├── references.list       # 217 config option refs
│   │   ├── README.md             # Help system documentation (32 lines)
│   │   └── topics/               # 25 help topic files
│   └── SDG-UTILS/
│       ├── colors.sh             # Color palette previewer
│       ├── documentation.sh      # Documentation browser
│       ├── documentation-old.sh  # Legacy documentation browser
│       ├── documentation.list    # 27 doc links
│       ├── documentation-old.list # Legacy doc links
│       ├── project-select.sh     # Git project finder/launcher
│       └── project-select-old.sh # Legacy project selector
├── docs/
│   ├── SDG-DOC-GETTING-STARTED/  # 5 docs
│   ├── SDG-DOC-DESKTOP-USAGE/    # 5 docs
│   ├── SDG-DOC-TERMINAL/         # 7 docs
│   ├── SDG-DOC-CUSTOMIZATION/    # 6 docs
│   └── SDG-DOC-DEVELOPMENT/      # 2 docs (WIP)
├── cache/                        # Empty
├── config/                       # Empty
├── other/                        # Empty
└── tips/SDG-UTIL-SCRIPTS/
    └── tips.list                 # 7 tips
```

## Reference Lists
| List | Entries | Content |
|------|---------|---------|
| cmds.list | ~120 | Common Linux commands by category |
| DMSipc.list | 244 | DMS IPC calls (audio, brightness, theme, bar, etc.) |
| mangodispatchers.list | 71 | All mangoWM dispatchers |
| mangoipc.list | 19 | mangoWM IPC commands |
| references.list | 217 | Config options (input, decoration, layouts, binds, etc.) |

## Documentation Sets (25 files)
| Doc Set | Files | Topics |
|---------|-------|--------|
| Getting Started | 5 | Welcome, software, keybinds, functions |
| Desktop Usage | 5 | Settings, menus, window mgmt, apps, layouts |
| Terminal | 7 | Navigation, files, utilities, text, piping, permissions |
| Customization | 6 | DMS, mangoWM layouts/binds/decoration/autostart/monitors |
| Development | 2 | Scripting basics, flow control (WIP) |

## Required Dependencies
| Dependency | Purpose |
|------------|---------|
| fzf | All interactive menu/tools |
| bat | Markdown and file previews |
| firefox | Online documentation links |
| tldr (tealdeer) | Command help summaries |
| eza | File listing in project-select |
| micro | Text editor |

## Optional Dependencies
None

## Required Dependents
- **SDG-MANGO-CORE**: References SDG-HELP and SDG-UTILS scripts in binds.conf
- **SDG-OS-META**: Installs as `sdg-util`
- **SDG-TERM**: References aliases (documentation, git-projects, tldrtui, helptui)

## Optional Dependents
- **SDG-DOCS**: Documents help system
- **SDG-TIPS**: References in tip content
