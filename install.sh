#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-util"

cp -r "$WORKDIR/local/"* "$HOME/.local/"

mkdir -p "$HOME/.local/docs"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"

mkdir -p "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/SDG-UTIL-SCRIPTS"

sudo ln -sf $HOME/.local/SDG-HELP/cmd-help.sh /usr/bin/sdg-tldr
sudo ln -sf $HOME/.local/SDG-UTILS/project-select.sh /usr/bin/git-projects

