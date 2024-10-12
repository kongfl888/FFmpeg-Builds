#!/bin/bash

mkdir -p scriptstmp
mv -f ./scripts.d/45-harfbuzz.sh ./scriptstmp/
mv -f ./scripts.d/50-avisynth* ./scriptstmp/
mv -f ./scripts.d/50-dav* ./scriptstmp/
mv -f ./scripts.d/50-fdk-aac* ./scriptstmp/
mv -f ./scripts.d/50-libass* ./scriptstmp/
mv -f ./scripts.d/50-libmp3lame* ./scriptstmp/
mv -f ./scripts.d/50-libvpx.sh ./scriptstmp/
mv -f ./scripts.d/50-libssh.sh ./scriptstmp/
mv -f ./scripts.d/50-rav1e.sh ./scriptstmp/
mv -f ./scripts.d/50-srt.sh ./scriptstmp/
mv -f ./scripts.d/50-vvenc.sh ./scriptstmp/
mv -f ./scripts.d/50-x264.sh ./scriptstmp/
mv -f ./scripts.d/50-x265.sh ./scriptstmp/

rm -rf scripts.d/45-*
rm -rf scripts.d/50-*

mv -f ./scriptstmp/* ./scripts.d/
rm -rf ./scriptstmp

FF_CONFIGURE_SMALL=" --disable-encoder=8bps --disable-encoder=avrp --disable-encoder=avui --disable-encoder=dvvideo --disable-encoder=exr --disable-encoder=flashsv --disable-encoder=flashsv2 --disable-encoder=flv --disable-encoder=h261 --disable-encoder=qoi --disable-encoder=qtrle --disable-encoder=smc --disable-encoder=rpza --disable-encoder=v408 --disable-encoder=rv10 --disable-encoder=rv20 --disable-encoder=wmv1 --disable-encoder=wmv2"
FF_CONFIGURE_SMALL+=" --disable-encoder=real_144 --disable-encoder=wmav1 --disable-encoder=wmav2 --disable-decoder=mov_text"
FF_CONFIGURE_SMALL+=" --disable-muxer=3g2 --disable-muxer=3gp --disable-muxer=amr --disable-muxer=avm2 --disable-muxer=dv --disable-muxer=flv --disable-muxer=h261 --disable-muxer=rm --disable-muxer=swf"
FF_CONFIGURE_SMALL+=" --enable-decoder=aac --enable-encoder=mpeg4"
FF_CONFIGURE_QT=" --disable-doc --disable-debug --enable-network --disable-lzma --enable-pic --disable-vulkan --disable-v4l2-m2m --disable-decoder=truemotion1"
