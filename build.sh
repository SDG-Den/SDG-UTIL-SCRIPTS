#!/bin/bash

LOCALDIR=SDG-UTIL-SCRIPTS
DOCDIR=SDG-UTIL-SCRIPTS
TIPDIR=SDG-UTIL-SCRIPTS

WORKDIR=$(pwd)

rm -rf "$HOME/.local/docs/$DOCDIR" "$HOME/.local/tips/$TIPDIR" \
  "$HOME/.local/SDG-HELP" "$HOME/.local/SDG-UTILS"

cp -r "$WORKDIR/config/"* "$HOME/.config/" 2>/dev/null || true
cp -r "$WORKDIR/local/"* "$HOME/.local/"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-HELP/cmd-help.sh" /usr/bin/tldrtui
sudo ln -sf "$HOME/.local/SDG-UTILS/project-select.sh" /usr/bin/git-projects
sudo ln -sf "$HOME/.local/SDG-UTILS/rgb-bar.sh" /usr/bin/rgbkeys
sudo ln -sf "$HOME/.local/SDG-UTILS/colors.sh" /usr/bin/colortui
sudo ln -sf "$HOME/.local/SDG-HELP/references.sh" /usr/bin/reference

echo "projects" > "$HOME/.config/projectdir.state"

which tldrtui || echo "INSTALL FAILED!"
