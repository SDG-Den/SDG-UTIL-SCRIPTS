#!/bin/bash

unipkg install any fzf

WORKDIR="$HOME/.cache/SDG-PKG/sdg-util"

cp -r "$WORKDIR/local/"* "$HOME/.local/"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-HELP/cmd-help.sh" /usr/bin/sdg-tldr
sudo ln -sf "$HOME/.local/SDG-UTILS/project-select.sh" /usr/bin/git-projects
sudo ln -sf "$HOME/.local/SDG-UTILS/rgb-bar.sh" /usr/bin/rgbkeys

