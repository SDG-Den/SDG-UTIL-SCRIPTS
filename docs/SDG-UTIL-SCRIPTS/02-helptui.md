> helptui

topic-based help browser that lists 25 markdown topic files organized by chapter:

- 000 — welcome and overview
- 100 — desktop/UI usage
- 200 — terminal basics
- 300 — customizing DMS
- 400 — customizing mangoWM
- 500 — scripting

selecting a topic shows its content with bat in the preview pane. pressing enter opens the full file for reading.

**keybind:** SUPER+SHIFT+H
**run:** helptui

**source:** help.sh at ~/.local/SDG-HELP/help.sh
**topics:** ~/.local/SDG-HELP/topics/

**adding a new topic:**
1. create a markdown file in ~/.local/SDG-HELP/topics/
2. name it with the chapter prefix (e.g. 601-my-topic)
3. it appears automatically in helptui on next launch
