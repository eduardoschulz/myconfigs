#!/usr/bin/env bash
set -euo pipefail

xrdb -merge /home/eduardo/.Xresources
feh --bg-scale /home/eduardo/wal.png
setxkbmap -model thinkpad60 -layout br
dockd --daemon &

if [[ $(/home/eduardo/.screenlayout/docked.sh) ]]; then
	/home/eduardo/.screenlayout/out.sh
else
       echo	passed
fi

status (){

    echo -n "BAT: $(acpi | awk '{print $4}' | sed s/,//) | $(date '+%Y-%m-%d %H:%M:%S')"
    sleep 1
}

while :; do
    xsetroot -name "$(status)"


done
