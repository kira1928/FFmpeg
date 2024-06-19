#!/bin/bash

./configure \
    --disable-everything \
    --disable-autodetect \
    --disable-encoders \
    --disable-decoders \
    --enable-decoder='h264,aac,hevc' \
    --enable-encoder='aac' \
    --enable-parser='h264,aac,mp3' \
    --enable-demuxer='flv,h264,aac,mp3,live_flv' \
    --enable-muxer='flv,mp4' \
    --enable-protocol='file,pipe,http' \
    --enable-bsf='h264_mp4toannexb,aac_adtstoasc' \
    --disable-avdevice \
    --disable-swscale \
    --disable-postproc \
    --disable-doc \
    --disable-runtime-cpudetect \
    --enable-network \
    --enable-gpl \
    --enable-version3 \
    --enable-avcodec \
    --enable-avformat \
    --enable-swresample \
    --enable-avfilter \
    --disable-programs \
    --enable-ffmpeg \
    "$@" \
    --pkg-config=pkg-config