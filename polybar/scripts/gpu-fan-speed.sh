#!/usr/bin/env bash

get_gpu_fan_speed() {
  GPU_FAN_SPEED=$(
    nvidia-smi --query-gpu=fan.speed --format=csv,noheader,nounits
  );
}

while true; do
    get_gpu_fan_speed
    echo " $GPU_FAN_SPEED%"
    sleep 1
done
