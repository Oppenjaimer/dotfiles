#!/bin/bash

# File containing LaTeX-Unicode mappings
MAP_FILE="$HOME/.config/rofi/latex-unicode.txt"

# No option selected (ROFI_RETV = 0), list all
if [[ "$ROFI_RETV" -eq 0 ]]; then
    # Separate columns by a comma (-F','), take non-empty lines (NF) and print
    # both columns ($1 and $2) with the appropriate format
    awk -F',' 'NF { printf "%s (%s)\n", $1, $2 }' "$MAP_FILE"

# Option selected (ROFI_RETV = 1), copy character
elif [[ "$ROFI_RETV" -eq 1 ]]; then
    # Selected element ($1) removing everything past first space (%% *)
    SELECTED="${1%% *}"
    # Unicode character corresponding to selected element
    UNICODE=$(awk -F',' -v sel="$SELECTED" '$1 == sel { print $2 }' "$MAP_FILE")

    # Matching unicode character found
    if [[ -n "$UNICODE" ]]; then
        # Copy character to clipboard
        echo -n "$UNICODE" | wl-copy
    fi
fi
