> sdg-tldr / tldrtui

opens an fzf picker of ~118 common Linux commands grouped by category (files, system, network, etc.). selecting a command shows its tldr output in the preview pane, and pressing enter opens the man page.

**keybind:** SUPER+H
**run:** sdg-tldr or tldrtui

**source:** cmd-help.sh at ~/.local/SDG-HELP/cmd-help.sh
**data:** cmds.list at ~/.local/SDG-HELP/cmds.list

**cmds.list format:**
one command per line, optionally with aliases in parentheses:
```
ls (eza)
cd (zoxide)
grep
```

the script maps these aliases (e.g. ls → eza) when calling tldr and man.
