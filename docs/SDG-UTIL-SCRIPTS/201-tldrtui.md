# tldrtui

Opens an `fzf` picker of common Linux commands grouped by category (files, system, network, etc.). Selecting a command shows its `tldr` output in the preview pane, and pressing enter opens the man page.

**keybind:** `SUPER+H`
**run:** `tldrtui`

**source:** `cmd-help.sh` at `~/.local/SDG-HELP/cmd-help.sh`
**data:** `cmds.list` at `~/.local/SDG-HELP/cmds.list`

## cmds.list format

One command per line. Aliases in parentheses have special coded exceptions and do not work as plain aliases:

```
ls (eza)
cd (zoxide)
grep
```

The script uses `sed` to map these aliases (e.g. `ls` → `eza`) when calling `tldr` and `man`.
