#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-util-scripts"

cp -r "$WORKDIR/local/"* "$HOME/.local/"

mkdir -p "$HOME/.local/docs"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"

mkdir -p "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/SDG-UTIL-SCRIPTS"
