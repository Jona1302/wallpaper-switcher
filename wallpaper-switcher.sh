#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"

choices=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \) | sort)

chosen=$(echo "$choices" | rofi -dmenu -i -p "Select a Wallpaper:")

[ -z "$chosen" ] && exit

swww img "$chosen" --transition-type any --transition-fps 60 --transition-duration 1

notify-send "Wallpaper switched" "$(basename "$chosen")"
