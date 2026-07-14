# documentation

Opens an `fzf` picker of curated documentation links covering:

- mangoWM docs (config, monitors, input, theming, effects, animations, layouts, rules, overview, scratchpad, binds, mouse, IPC)
- Dank Material Shell docs (overview, managing, IPC, diagnostics, app themes)
- Ghostty config reference
- CachyOS wiki
- Arch wiki
- Local reference sheets (references.sh for mangoWM config/dispatchers/IPC, DMS IPC)

Selecting an entry opens the link in Firefox or runs the local command.

**keybind:** `SUPER+SHIFT+M`
**run:** `documentation`

**source:** `documentation.sh` at `~/.local/SDG-UTILS/documentation.sh`
**data:** `documentation.list` at `~/.local/SDG-UTILS/documentation.list`

## Adding a new link

Add a line to `documentation.list` in the format:

```
Display Name | firefox --new-tab https://example.com
```
