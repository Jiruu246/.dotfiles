#!/usr/bin/env bash

function run {
 if ! pgrep -f $1 ;
 then
    $@&
 fi
}

ibus-daemon -drxR 
run spotify
run discord
run ibus
run mictray
run nm-applet
~/.config/polybar/launch.sh

redshift -x #reset all effect
killall -q redshift 
run redshift
