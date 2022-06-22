#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll --length 100 \
  --delay 0.4 \
  --match-command "xdotool getwindowfocus getwindowname" \
  --update-check true "xdotool getwindowfocus getwindowname" &

wait
