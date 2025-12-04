#!/bin/bash

BG_DIR="$HOME/.config/i3/wallpapers/"
CURRENT_BG_LINK="$HOME/.config/i3/current-wallpaper"

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

  pkill -x feh

  feh --bg-scale "$CURRENT_BG_LINK" >/dev/null 2>&1 &

fi
