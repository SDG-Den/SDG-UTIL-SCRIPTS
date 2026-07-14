# reference

Opens an `fzf` picker over one of four reference lists, passed as an argument:

| argument | file | entries | content |
|----------|------|---------|---------|
| references | `references.list` | mangoWM config options |
| mangodispatchers | `mangodispatchers.list` | mangoWM keybind dispatchers |
| mangoipc | `mangoipc.list` | mmsg IPC commands |
| DMSipc | `DMSipc.list` | DMS IPC commands |

**keybind:** `SUPER+SHIFT+/`
**run:** `reference <listname>`

**source:** `references.sh` at `~/.local/SDG-HELP/references.sh`
**data:** `~/.local/SDG-HELP/*.list` files

The lists are plain text, one entry per line, searched with `fzf` for exact match (`-e` mode).
