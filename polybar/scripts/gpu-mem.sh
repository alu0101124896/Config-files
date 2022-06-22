#!/usr/bin/env bash

get_gpu_mem() {
  GPU_MEM_USED=$(
    nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits
  );
  GPU_MEM_TOTAL=$(
    nvidia-smi --query-gpu=memory.total --format=csv,noheader,nounits
  );
}

while true; do
    get_gpu_mem
    echo " $GPU_MEM_USED MiB / $GPU_MEM_TOTAL MiB"
    sleep 2
done
