> Help System Overview

this package provides three interconnected help tools and three utility tools:

**help tools:**
- tldrtui (cmd-help.sh) — looks up common commands with TLDR/man output
- helptui (help.sh) — browses 25 help topic files by chapter
- reference (references.sh) — searches reference sheets for mangoWM config options, dispatchers, and IPC commands

**utility tools:**
- documentation — opens a picker of 27 external and local documentation links
- colortui — previews the current Material You color palette from Matugen
- projects — scans ~/projects/ for git repos and opens them in VS Code

all three help tools use fzf for interactive selection with preview panes. the topic files (helptui) and reference lists (reference) are plain text/markdown files stored in ~/.local/SDG-HELP/.
