#!/bin/bash
export PATH=/home/iprodicto/toolchains/clang-r416183b/bin:/home/iprodicto/toolchains/arm-gnu/bin:$PATH

make \
  ARCH=arm64 \
  CC=clang \
  CROSS_COMPILE=aarch64-none-linux-gnu- \
  CLANG_TRIPLE=aarch64-none-linux-gnu- \
  TARGET_SOC=s5e8825 \
  -j$(nproc)
