# TODO — SDG-UTIL-SCRIPTS

## Done (this session)
- [x] `tldrtui` (cmd-help.sh) — quit on Esc now works
- [x] `reference.sh` — quit on Esc + error/help if no list arg given
- [x] `git-projects` (project-select.sh) — `--icons` → `--icons=always`
- [x] `documentation.sh` + `documentation.list` + `202-documentation.md` → moved to OLD
- [x] `install.sh` — creates `~/.config/projectdir.state` (default: `projects`)
- [x] `install.sh` / `update.sh` / `uninstall.sh` — `documentation` symlink removed
- [x] All `documentation` command references scrubbed from README, info.md, docs, topics, tips, TEST-CHECKLIST.md, local/SDG-HELP/README.md
- [x] `DMSipc.list` → `dms-ipc-commands.list` (all refs updated)
- [x] `tips.list` — removed incorrect `sdg-docs` and outdated `documentation` tips
- [x] `info.md` — added `sdg-mango-helpers` dependency, removed firefox dep
- [x] Cross-referenced all binds in SDG-MANGO-CORE vs SDG-UTIL-SCRIPTS docs
- [x] `topics/` directory moved to OLD (superseded by SDG-DOCS)
- [x] `local/SDG-HELP/README.md` — topics references removed
- [x] SDG-MANGO-CORE `102-keybinds-reference.md` — fixed "sdgdocs from sdg-util" → "from sdg-docs"

## Testing (manual)
- [ ] `tldrtui` / `cmd-help.sh` browses commands correctly, Esc quits
- [ ] `reference` (no args) shows help; `reference <list>` browses, Esc quits
- [ ] `colortui` renders colors
- [ ] `git-projects` launches repos (preview no longer errors on `--icons`)
- [ ] `rgbkeys` shows RGB keyboard bar
- [ ] `cmds.list` is complete
- [ ] `documentation` command no longer exists (404 expected)
