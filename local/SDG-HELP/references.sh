#!/bin/bash
while true; do
    cat "$HOME/.local/SDG-HELP/$1.list" | fzf -e --layout=reverse
done
