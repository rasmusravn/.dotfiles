#!/bin/bash

# Save current Kitty settings to temporary files
kitty @ get-colors --all >/tmp/kitty_colors_backup.txt
kitty @ get-font-size >/tmp/kitty_font_size_backup.txt

# Set your Zen-like appearance for kitty_font_size_backup
kitty @ set-window-title -m state:active 'newsboat in zen-mode'

# Launch Newsboat
newsboat

# Revert Kitty settings to previous state
kitty @ set-colors --all --from-file /tmp/kitty_colors_backup.txt
kitty @ set-font-size --from-file /tmp/kitty_font_size_backup.txt

# Remove temporary files
rm /tmp/kitty_colors_backup.txt /tmp/kitty_font_size_backup.txt
