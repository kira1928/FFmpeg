#!/bin/bash
set -x
SCRIPT_DIR=$(dirname "$0")
if [ "$1" = "windows" ]; then
  if [ ! -f "./ffmpeg.exe" ]; then
    $SCRIPT_DIR/configure_script.sh \
      --target-os=mingw32 \
      --arch=x86_64 \
      --cross-prefix=x86_64-w64-mingw32- \
      --enable-debug=3 \
      --disable-optimizations \
      --enable-w32threads \
      --disable-stripping
  fi
else
  if [ ! -f "./ffmpeg" ]; then
    $SCRIPT_DIR/configure_script.sh \
      --enable-debug=3 \
      --disable-optimizations \
      --enable-pthreads \
      --disable-stripping
  fi
fi

make -j$(nproc)