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
run kmix
run ibus
run mictray
run nm-applet
~/.config/polybar/launch.sh
