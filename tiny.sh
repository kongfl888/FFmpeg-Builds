#!/bin/bash

mkdir -p scriptstmp
mv -f ./scripts.d/50-avisynth* ./scriptstmp/
mv -f ./scripts.d/50-dav* ./scriptstmp/
mv -f ./scripts.d/50-fdk-aac* ./scriptstmp/
mv -f ./scripts.d/50-libass* ./scriptstmp/
mv -f ./scripts.d/50-libmp3lame* ./scriptstmp/
mv -f ./scripts.d/50-libvpx.sh ./scriptstmp/
mv -f ./scripts.d/50-libssh.sh ./scriptstmp/
mv -f ./scripts.d/50-openjpeg.sh ./scriptstmp/
mv -f ./scripts.d/50-rav1e.sh ./scriptstmp/
mv -f ./scripts.d/50-srt.sh ./scriptstmp/
mv -f ./scripts.d/50-vvenc.sh ./scriptstmp/
mv -f ./scripts.d/50-x264.sh ./scriptstmp/
mv -f ./scripts.d/50-x265.sh ./scriptstmp/
mv -f ./scripts.d/50-xvid.sh ./scriptstmp/
mv -f ./scripts.d/50-xavs2.sh ./scriptstmp/

rm -rf scripts.d/45-*
rm -rf scripts.d/50-*

mv -f ./scriptstmp/* ./scripts.d/
rm -rf ./scriptstmp

FF_CONFIGURE_QT=" --disable-doc --disable-debug --enable-network --disable-lzma --enable-pic --disable-vulkan --disable-v4l2-m2m --disable-decoder=truemotion1"
