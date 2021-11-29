#!/bin/bash

BARID=$(xprop -name "systray" _NET_WM_PID | awk '{print $3}')
echo "${BARID}"
polybar-msg -p ${BARID} cmd toggle
