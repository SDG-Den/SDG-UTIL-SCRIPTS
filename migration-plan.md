# SDG-UTIL-SCRIPTS Migration Plan

## Directory Mapping

| Source | Installed to |
|--------|-------------|
| `local/SDG-UTILS/documentation.sh` | `~/.local/SDG-UTILS/documentation.sh` |
| `local/SDG-UTILS/documentation-updated.sh` | (merge into documentation.sh) |
| `local/SDG-UTILS/project-select.sh` | `~/.local/SDG-UTILS/project-select.sh` |
| `local/SDG-UTILS/project-select-updated.sh` | (merge into project-select.sh) |
| `local/SDG-HELP/cmd-help.sh` | `~/.local/SDG-HELP/cmd-help.sh` |
| `local/SDG-HELP/help.sh` | `~/.local/SDG-HELP/help.sh` |
| `local/SDG-HELP/help-updated.sh` | (merge into help.sh) |
| `local/SDG-UTILS/colors.sh` | `~/.local/SDG-UTILS/colors.sh` |
| `local/SDG-UTILS/colors-updated.sh` | (merge into colors.sh) |
| `tips/` | `~/.local/tips/SDG-UTIL-SCRIPTS/` |
| `docs/` | `~/.local/docs/SDG-UTIL-SCRIPTS/` |

## Missing Files

These files are referenced in other modules' configuration but **do not exist** in any module yet:
- `~/.local/SDG-UTILS/pkg-install.sh` — referenced by `zshconfig.zsh` alias (`sdg-pkg-install`)
- `~/.local/SDG-UTILS/aur-install.sh` — referenced by `zshconfig.zsh` alias (`sdg-aur-install`)

These need to be created or the aliases removed.

## Script Merging

Four pairs of "original" vs "updated" scripts need to be reconciled:

| Original | Updated | Action |
|----------|---------|--------|
| `documentation.sh` | `documentation-updated.sh` | Merge: take updated's logic, keep original's header |
| `project-select.sh` | `project-select-updated.sh` | Merge: updated adds arg handling, fzf preview |
| `help.sh` | `help-updated.sh` | Merge: updated adds tldr |
| `colors.sh` | `colors-updated.sh` | Merge: updated adds gradient gen, picker |

## Path Rewrites

### documentation.sh — hardcoded paths

| Old | New |
|-----|-----|
| `/home/$(whoami)/.config/sdgos/help/help.sh` | `$HOME/.local/SDG-HELP/help.sh` |

### help.sh — hardcoded paths

| Old | New |
|-----|-----|
| `HELP_DIR="$HOME/.config/sdgos/help"` | `HELP_DIR="$HOME/.local/SDG-HELP"` |
| `SCRIPT_DIR="$HOME/.config/sdgos/help"` | `SCRIPT_DIR="$HOME/.local/SDG-HELP"` |

### project-select.sh — hardcoded paths

| Old | New |
|-----|-----|
| `/home/$(whoami)/.config/sdgos/help/help.sh` | `$HOME/.local/SDG-HELP/help.sh` |

### colors.sh — hardcoded paths

| Old | New |
|-----|-----|
| `/home/$(whoami)/.config/sdgos/help/help.sh` | `$HOME/.local/SDG-HELP/help.sh` |

## Cross-Module References TO SDG-UTIL-SCRIPTS

| From | Old Reference | New Reference |
|------|--------------|---------------|
| SDG-MANGO-CORE/binds.conf | `~/.config/sdgos/help/cmd-help.sh` | `~/.local/SDG-HELP/cmd-help.sh` |
| SDG-MANGO-CORE/binds.conf | `~/.config/sdgos/help/help.sh` | `~/.local/SDG-HELP/help.sh` |
| SDG-MANGO-CORE/binds.conf | `~/.config/sdgos/misc/colors.sh` | `~/.local/SDG-UTILS/colors.sh` |
| SDG-MANGO-CORE/binds.conf | `~/.config/sdgos/tuis/documentation.sh` | `~/.local/SDG-UTILS/documentation.sh` |
| SDG-MANGO-CORE/binds.conf | `~/.config/sdgos/tuis/project-select.sh` | `~/.local/SDG-UTILS/project-select.sh` |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/help/cmd-help.sh` | `~/.local/SDG-HELP/cmd-help.sh` |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/help/help.sh` | `~/.local/SDG-HELP/help.sh` |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/tuis/project.select.sh` | `~/.local/SDG-UTILS/project-select.sh` |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/tuis/documentation.sh` | `~/.local/SDG-UTILS/documentation.sh` |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/tuis/pkg-install.sh` | (file must be created) |
| SDG-TERM/zshconfig.zsh | `~/.config/sdgos/tuis/aur-install.sh` | (file must be created) |

## Lifecycle Scripts

All four root-level scripts are empty. Implement:

- **install.sh**: Merge script pairs, deploy to `~/.local/SDG-UTILS/` and `~/.local/SDG-HELP/`, copy docs/tips.
- **uninstall.sh**: Remove `~/.local/SDG-UTILS/`, `~/.local/SDG-HELP/`.
- **update.sh**: Re-deploy.
- **detect.sh**: Check `fzf`, `bat` for project-select.sh. Colors.sh needs `pywal` or `matugen`.

## Modular Tips

- Create `tips/` with tips about `sdg-docs`, `sdg-help`, `sdg-colors`, `sdg-projects`.

## Modular Docs

- Create `docs/` documenting all available util scripts.

## Cleanup

- Remove `*-updated.sh` files after merge
- Remove empty `cache/`, `other/`
