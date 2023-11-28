#!/bin/bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Kill already running processes
_ps=(waybar rofi)
for _prs in "${_ps[@]}"; do
    if pidof "${_prs}" >/dev/null; then
        killall "${_prs}"
    fi
done

# Relaunch waybar
waybar &

# Relaunch dunst with pywal-borders
${SCRIPTSDIR}/PywalDunst.sh &

## trying to figure out how to restart Rainbow borders
#sleep 1
#${SCRIPTSDIR}/RainbowBorders.sh &