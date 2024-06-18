#!/bin/bash

if [ ! -f "./ffmpeg" ]; then
  ./configure_script.sh \
    --enable-debug=3 \
    --disable-optimizations \
    --enable-pthreads \
    --disable-stripping
fi

make -j$(nproc)