# reference

Opens an `fzf` picker over one of four reference lists, passed as an argument:

| argument | file | entries | content |
|----------|------|---------|---------|
| references | `references.list` | ~217 | mangoWM config options |
| mangodispatchers | `mangodispatchers.list` | ~71 | mangoWM keybind dispatchers |
| mangoipc | `mangoipc.list` | ~19 | mmsg IPC commands |
| DMSipc | `DMSipc.list` | ~244 | DMS IPC commands |

**keybind:** `SUPER+SHIFT+/`
**run:** `reference <listname>`

**source:** `references.sh` at `~/.local/SDG-HELP/references.sh`
**data:** `~/.local/SDG-HELP/*.list` files

The lists are plain text, one entry per line, searched with `fzf` for exact match (`-e` mode).
