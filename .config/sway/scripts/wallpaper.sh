#!/bin/bash

BG_DIR="$HOME/.config/sway/wallpapers/"
CURRENT_BG_LINK="$HOME/.config/sway/current-wallpaper"

mapfile -d '' -t BGS < <(find -L "$BG_DIR" -type f -print0 | sort -z)
TOTAL=${#BGS[@]}

if [[ $TOTAL -eq 0 ]]; then
  notify-send "No background was found for theme" -t 2000
  pkill -x swaybg
  setsid uwsm-app -- swaybg --color '#000000' >/dev/null 2>&1 &
else
  if [[ -L "$CURRENT_BG_LINK" ]]; then
    CURRENT_BG=$(readlink "$CURRENT_BG_LINK")
  else
    CURRENT_BG=""
  fi


  INDEX=-1
  for i in "${!BGS[@]}"; do
    if [[ "${BGS[$i]}" == "$CURRENT_BG" ]]; then
      INDEX=$i
      break
    fi
  done

    if [[ $INDEX -eq -1 ]]; then
    NEW_BG="${BGS[0]}"
  else
    NEXT_INDEX=$(((INDEX + 1) % TOTAL))
    NEW_BG="${BGS[$NEXT_INDEX]}"
  fi

  ln -nsf "$NEW_BG" "$CURRENT_BG_LINK"

  pkill -x swaybg

  swaybg -i "$CURRENT_BG_LINK" -m fill >/dev/null 2>&1 &

fi
