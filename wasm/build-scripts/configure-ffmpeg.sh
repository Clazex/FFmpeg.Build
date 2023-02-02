#!/bin/bash

set -euo pipefail
source $(dirname $0)/var.sh

FLAGS=(
  "${FFMPEG_CONFIG_FLAGS_BASE[@]}"
  --enable-gpl
  --disable-autodetect
  --disable-network
  --disable-everything
  --enable-muxer=mp4
  --enable-demuxer=mov
  --enable-protocol=file
)
echo "FFMPEG_CONFIG_FLAGS=${FLAGS[@]}"
emconfigure ./configure "${FLAGS[@]}"
