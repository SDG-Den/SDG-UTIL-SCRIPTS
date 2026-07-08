#!/bin/bash

while true; do
    ls "$HOME/.local/SDG-HELP/topics" 2>/dev/null
    SELECTED=$(ls "$HOME/.local/SDG-HELP/topics" 2>/dev/null | fzf --layout=reverse --preview-window 'right:70%:wrap-word' --preview="clear && bat --style=plain -S -f -m '*:Markdown' $HOME/.local/SDG-HELP/topics/{}" --bind 'enter:execute(bat --style=plain -S -f -m "*:Markdown" $HOME/.local/SDG-HELP/topics/{})')
done
