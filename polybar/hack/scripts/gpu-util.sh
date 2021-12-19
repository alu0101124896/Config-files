#!/usr/bin/env bash

get_gpu_util() {
  GPU_UTIL=$(
    nvidia-smi |
    sed -n '10p' |
    xargs -n 1 |
    sed -n '13p' |
    tr -d -c 0-9
  );
}

while true; do
    get_gpu_util
    echo " $GPU_UTIL%"
    sleep 1
done
