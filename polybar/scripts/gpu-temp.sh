#!/usr/bin/env bash

get_gpu_temp() {
  GPUTEMP=$(
    nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits
  );
}

while true; do
    get_gpu_temp
    echo " $GPUTEMPºC"
    sleep 1
done
