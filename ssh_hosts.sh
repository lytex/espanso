#!/bin/bash

# Selects a Host from ssh config, previewing 5 lines after Host
konsole -e bash -c 'cat ~/.ssh/config | grep -E "Host[ \t]+" | awk "{\$1=\"\"; print}" | awk "{\$1=\$1;print}" | fzf --preview "cat ~/.ssh/config | grep -E '"'Host[ \t]+{1}[ \t]*$'"' -A 5" > ~/.config/espanso/.tmp'
cat ~/.config/espanso/.tmp
