#!/bin/bash

CONFIG="$HOME/.local/SDG-UTILS/documentation.list"

SELECTED=$(cat "$CONFIG" | cut -d '|' -f 1 | fzf --layout=reverse)

URL=$(cat "$CONFIG" | grep -e "$SELECTED" | cut -d '|' -f 2)

eval "$URL"
