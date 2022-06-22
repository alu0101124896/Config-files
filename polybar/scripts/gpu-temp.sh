#!/usr/bin/env bash

get_gpu_temp() {
  GPUTEMP=$(
    nvidia-smi |
    sed -n '10p' |
    xargs -n 1 |
    sed -n '3p'|
    tr -d -c 0-9
  );
}

while true; do
    get_gpu_temp
    echo " $GPUTEMPºC"
    sleep 1
done
