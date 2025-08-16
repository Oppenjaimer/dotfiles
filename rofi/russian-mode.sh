#!/bin/bash

# Check non-empty input
if [[ -n "$@" ]]; then
    # Pass input to translit script
    RESULT=$(echo -n "$@" | "$HOME/.config/rofi/russian-translit.py")

    # Copy result to clipboard
    echo -n "$RESULT" | wl-copy
fi
