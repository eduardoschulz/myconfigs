#!/usr/bin/env bash
set -euo pipefail

bash /home/eduardo/.screenlayout/default.sh
xrdb -merge /home/eduardo/.Xresources
feh --bg-scale /home/eduardo/wal.png
setxkbmap -layout us,br
setxkbmap -option 'grp:ctrl_shift_toggle'

#Playing: $(playerctl metadata --format '{{title}}-{{artist}}')"
status (){

    echo -n "$(date '+%Y-%m-%d %H:%M:%S')"
    sleep 1
}

#"Playing: $(playerctl metadata --format '{{title}} - {{artist}}')
while :; do
    xsetroot -name "$(status)"


done
