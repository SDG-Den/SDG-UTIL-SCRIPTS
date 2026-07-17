#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: reference <list>"
    echo "Available lists: references, mangodispatchers, mangoipc, dms-ipc-commands"
    exit 1
fi

while true; do
    SELECTED=$(cat "$HOME/.local/SDG-HELP/$1.list" | fzf -e --layout=reverse)
    [ -z "$SELECTED" ] && break
done
