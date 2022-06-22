#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll --length 40 \
  --delay 0.4 \
  --match-command "$(dirname $0)/mpris_control.sh --title" \
  --update-check true "$(dirname $0)/mpris_control.sh --title" &

wait

# --match-text "Playing" "--scroll 1" \
# --match-text "Paused" "--scroll 0" \
