#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
polybar -c ~/.config/polybar/config.ini -rq mybar >>/tmp/polybar1.log 2>&1 & disown
echo "Bars launched..."

## Launch polybar on all screens
#if type "polybar" >> /dev/null; then
#  for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --reload example &
#  done
#else
#  polybar --reload example &
#fi


