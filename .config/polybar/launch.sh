#!/bin/bash

killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
polybar powerButton 2>&1 & 
polybar datetime 	2>&1 & 
polybar middle 		2>&1 &
polybar utils		2>&1 &
polybar spotifyStatus 2>&1 &
#polybar systray 	2>&1 | tee -a /tmp/polybarsystray.log &
#polybar testbar 2>&1

