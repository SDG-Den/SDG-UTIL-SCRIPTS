#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-util"

rm -rf "$HOME/.local/SDG-HELP"
rm -rf "$HOME/.local/SDG-UTILS"
cp -r "$WORKDIR/local/"* "$HOME/.local/"

rm -rf "$HOME/.local/docs/SDG-DOC-GETTING-STARTED"
rm -rf "$HOME/.local/docs/SDG-DOC-DESKTOP-USAGE"
rm -rf "$HOME/.local/docs/SDG-DOC-TERMINAL"
rm -rf "$HOME/.local/docs/SDG-DOC-CUSTOMIZATION"
rm -rf "$HOME/.local/docs/SDG-DOC-DEVELOPMENT"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"

rm -rf "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
mkdir -p "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
