#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload juno >>/tmp/polybar-juno.log 2>&1 &
done
# Launch juno and mpd
#polybar juno >>/tmp/polybar-juno.log 2>&1 &
polybar io >>/tmp/polybar-io.log 2>&1 &

echo "Bars launched..."
