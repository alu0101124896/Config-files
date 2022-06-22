#!/usr/bin/env bash

get_gpu_mem() {
  GPU_MEM=$(
    nvidia-smi |
    sed -n '10p' |
    xargs -n 1 |
    sed -n '9p' |
    tr -d -c 0-9
  );
}

while true; do
    get_gpu_mem
    echo " $GPU_MEM MiB"
    sleep 2
done
