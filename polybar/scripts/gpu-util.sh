#!/usr/bin/env bash

get_gpu_util() {
  GPU_UTIL=$(
    nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits
  );
}

while true; do
    get_gpu_util
    echo " $GPU_UTIL%"
    sleep 1
done
