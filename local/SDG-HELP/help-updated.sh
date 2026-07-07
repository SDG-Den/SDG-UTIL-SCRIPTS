#!/bin/bash

while true; do
    ls ~/.config/sdgos/help/topics 2>/dev/null || ls /usr/share/sdgos/help/topics 2>/dev/null || ls updated-help-topics 2>/dev/null
    SELECTED=$(ls ~/.config/sdgos/help/topics 2>/dev/null | fzf --layout=reverse --preview-window 'right:70%:wrap-word' --preview="clear && bat --style=plain -S -f -m '*:Markdown' ~/.config/sdgos/help/topics/{}" --bind 'enter:execute(bat --style=plain -S -f -m "*:Markdown" ~/.config/sdgos/help/topics/{})')
done
