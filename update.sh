#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-util"

rm -rf "$HOME/.local/SDG-HELP" "$HOME/.local/SDG-UTILS"
cp -r "$WORKDIR/local/"* "$HOME/.local/"

rm -rf "$HOME/.local/docs/SDG-DOC-GETTING-STARTED" \
      "$HOME/.local/docs/SDG-DOC-DESKTOP-USAGE" \
      "$HOME/.local/docs/SDG-DOC-TERMINAL" \
      "$HOME/.local/docs/SDG-DOC-CUSTOMIZATION" \
      "$HOME/.local/docs/SDG-DOC-DEVELOPMENT"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"

rm -rf "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-HELP/cmd-help.sh" /usr/bin/sdg-tldr
sudo ln -sf "$HOME/.local/SDG-UTILS/project-select.sh" /usr/bin/git-projects
sudo ln -sf "$HOME/.local/SDG-UTILS/rgb-bar.sh" /usr/bin/rgbkeys
