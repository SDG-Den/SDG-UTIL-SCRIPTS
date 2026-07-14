# Help System Overview

This package provides help tools and utility tools:

**help tools:**
- `sdg-tldr` (`cmd-help.sh`) — looks up common commands with TLDR/man output
- `reference` (`references.sh`) — browses reference sheets for mangoWM config options, dispatchers, and IPC commands

**utility tools:**
- `documentation` (`documentation.sh`) — opens a picker of external and local documentation links
- `colortui` (`colors.sh`) — previews the current Material You color palette from Matugen
- `git-projects` (`project-select.sh`) — scans `~/projects/` for git repos and opens them in VS Code

The help tools use `fzf` for interactive selection with preview panes.
