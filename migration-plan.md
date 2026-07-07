# SDG-UTIL-SCRIPTS Migration Plan

## 1. Implement Lifecycle Scripts

All four root-level lifecycle scripts are **empty stubs** — must be implemented:

| Script | Purpose |
|--------|---------|
| `install.sh` | Deploy `local/SDG-HELP/` → `~/.config/sdgos/help/`, deploy `local/SDG-UTILS/` → `~/.config/sdgos/tuis/`, make scripts executable |
| `uninstall.sh` | Remove `~/.config/sdgos/help/` and `~/.config/sdgos/tuis/` |
| `update.sh` | Overwrite help/tuis scripts (preserve user state) |
| `detect.sh` | Check for `fzf`, `bat`, `tldr`, `jq` |

## 2. Path Audit — Hardcoded `/home/$(whoami)/`

### 2.1 `local/SDG-UTILS/documentation.sh` — line 4
```bash
CONFIG=/home/$(whoami)/.config/sdgos/tuis/documentation.list
```
- Change to: `CONFIG="$HOME/.config/sdgos/tuis/documentation.list"`.

### 2.2 `local/SDG-UTILS/project-select.sh` — line 5
```bash
DIR=/home/$(whoami)/$dirstate
```
- Change to: `DIR="$HOME/$dirstate"`.

## 3. Path Audit — Cross-module References

### 3.1 Help system data files reference other modules
The `local/SDG-HELP/topics/` files extensively reference paths in other modules:

| Topic File | Reference | Source Module |
|-----------|-----------|---------------|
| 002 | `~/.config/sdgos/tips/tips.list` | SDG-TIPS |
| 002 | `~/.config/sdgos/wallpapers` | SDG-OS-THEMES |
| 004 | `~/.config/sdgos/wallpapers` | SDG-OS-THEMES |
| 004 | `~/.config/sdgos/tips/tips.list` | SDG-TIPS |
| 004 | `~/.config/projectdir.state` | SDG-UTIL-SCRIPTS itself |
| 102 | `~/.config/mango/binds.conf` | SDG-MANGO-CORE |
| 104 | `~/.config/unipkg/unipkg.conf` | External (unipkg) |
| 301 | `~/.config/mango/dms/binds.conf` | SDG-MANGO-CORE |
| 301 | `~/.config/DankMaterialShell/settings.json` | SDG-MANGO-CORE |

These are documentation references, not runtime paths — they should be updated when anything changes.

### 3.2 `references.list` references
- Line 8: `/usr/share/wayland-sessions/mango.desktop` — system path, not a module path.

### 3.3 `documentation.list` references
- Entries link to MangoWM official docs, DMS docs, Ghostty docs, Arch/CachyOS wikis.
- Local entries reference `~/.config/sdgos/help/references.sh`, `~/.config/sdgos/help/help.sh`.

## 4. Deploy Path Map

| Source | Destination |
|--------|-------------|
| `local/SDG-HELP/help.sh` | `~/.config/sdgos/help/help.sh` |
| `local/SDG-HELP/help-updated.sh` | `~/.config/sdgos/help/help-updated.sh` (or merge into help.sh) |
| `local/SDG-HELP/cmd-help.sh` | `~/.config/sdgos/help/cmd-help.sh` |
| `local/SDG-HELP/cmd-help-updated.sh` | `~/.config/sdgos/help/cmd-help-updated.sh` (or merge) |
| `local/SDG-HELP/references.sh` | `~/.config/sdgos/help/references.sh` |
| `local/SDG-HELP/references-updated.sh` | `~/.config/sdgos/help/references-updated.sh` (or merge) |
| `local/SDG-HELP/cmds.list` | `~/.config/sdgos/help/cmds.list` |
| `local/SDG-HELP/*.list` | `~/.config/sdgos/help/*.list` |
| `local/SDG-HELP/topics/*` | `~/.config/sdgos/help/topics/*` |
| `local/SDG-UTILS/colors.sh` | `~/.config/sdgos/misc/colors.sh` |
| `local/SDG-UTILS/documentation.sh` | `~/.config/sdgos/tuis/documentation.sh` |
| `local/SDG-UTILS/documentation.list*` | `~/.config/sdgos/tuis/documentation.list*` |
| `local/SDG-UTILS/project-select.sh` | `~/.config/sdgos/tuis/project-select.sh` |

## 5. Script Cleanup — "Original" vs "Updated" Files

There are parallel "original" and "-updated" versions of every help script:

| Original | Updated | Difference |
|----------|---------|------------|
| `help.sh` | `help-updated.sh` | Fixes `$true` bug, adds path fallbacks, adds `--bind enter:execute` |
| `cmd-help.sh` | `cmd-help-updated.sh` | Fixes `$true` bug |
| `references.sh` | `references-updated.sh` | Fixes `$true` bug, adds argument quoting |
| `documentation.list` | `documentation.list-updated` | Adds 2 entries |

**Action:**
- Merge each "-updated" version into the original.
- The `$true` → `true` fix (lines 3 of each script) must be applied.
- The fallback paths in `help-updated.sh` should be incorporated into `help.sh`.
- Remove the "-updated" files after merging.

## 6. Modular Help System — Architecture

### 6.1 Current state
- All help topics are in SDG-UTIL-SCRIPTS under `local/SDG-HELP/topics/`.
- Other modules cannot contribute help topics without modifying this repo.

### 6.2 Proposed multi-source help system
Update `help.sh` to read from multiple topic directories:

```bash
TOPIC_DIRS=(
  "$HOME/.config/sdgos/help/topics"           # Core topics (SDG-UTIL-SCRIPTS)
  "$HOME/.config/sdgos/help/topics/contrib"   # Module-contributed topics
)
```

**Convention:**
- Each module can place topic files under `docs/help/topics/` in its own repo.
- During `sdgpkg install`, the SDG-PKG lifecycle copies them to `~/.config/sdgos/help/topics/contrib/<module>/`.
- `help.sh` iterates all directories and merges the topic lists.

### 6.3 Reference sheets
Same approach:
- Other modules can contribute `.list` reference files.
- `references.sh` currently takes `$1` as the list name and reads `~/.config/sdgos/help/$1.list`.
- Add a `--all` flag or directory scanning for contributed lists.

### 6.4 Command reference
- `cmd-help.sh` reads `~/.config/sdgos/help/cmds.list`.
- Other modules could contribute command snippets via `cmds.list.ext/` directory.

## 7. Bug Fixes

### 7.1 `$true` vs `true`
- `help.sh` line 5: `while $true`
- `cmd-help.sh` line 4: `while $true`
- `references.sh` line 2: `while $true`
- `$true` is a bash variable lookup (usually empty), not the command `true`.
- Fix: change to `while true` or `while :`.

### 7.2 `eval` security
- `documentation.sh` line 11: `eval $URL` — executes arbitrary commands from the documentation list.
- Change to: open URL in browser directly: `firefox "$URL"` or `xdg-open "$URL"`.

### 7.3 help-updated.sh bare relative path
- Line 4: `updated-help-topics` is a bare relative path with no context — remove or make absolute.

## 8. Empty Directory Cleanup

| Directory | Status |
|-----------|--------|
| `cache/` | Empty — remove |
| `config/` | Empty — remove |
| `docs/` | Empty — remove |
| `other/` | Empty — remove |
| `tips/` | Empty — add tips or remove |

## 9. Modular Tips

- SDG-UTIL-SCRIPTS can contribute tips about helptui, tldrtui, documentation, project-select, colors.sh.
- Add a `tips/` directory or contribute to the central tips system.
