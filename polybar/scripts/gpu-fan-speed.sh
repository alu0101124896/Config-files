#!/usr/bin/env bash

get_gpu_fan_speed() {
  GPU_FAN_SPEED=$(
    nvidia-smi |
    sed -n '10p' |
    xargs -n 1 |
    sed -n '2p' |
    tr -d -c 0-9
  );
}

while true; do
    get_gpu_fan_speed
    echo " $GPU_FAN_SPEED%"
    sleep 1
done
