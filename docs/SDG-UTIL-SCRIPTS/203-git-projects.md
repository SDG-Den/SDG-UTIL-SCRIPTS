# git-projects

Scans a directory (default: `~/projects/`) for git repositories up to 5 levels deep, then opens an `fzf` picker with an `eza` preview of each repo and its README. Selecting a repo launches it in `code-oss` via `mmsg`.

**keybind:** `SUPER+SHIFT+TAB`
**run:** `git-projects`

**source:** `project-select.sh` at `~/.local/SDG-UTILS/project-select.sh`
**config:** `~/.config/projectdir.state` — contains the subdirectory under `$HOME` to scan (e.g. `projects`)

If `projectdir.state` contains `projects`, the script scans `~/projects/`.
