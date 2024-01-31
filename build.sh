#!/bin/bash

# git clone -b android-static-libs https://github.com/cgojin/ffmpeg-kit
# cd ffmpeg-kit

# reference
# ffmpeg-kit/.github/workflows/periodic-builds-android.yml
# ffmpeg-kit/.github/workflows/android-build-scripts.yml

# brew install autoconf automake libtool pkg-config curl git cmake gcc gperf texinfo yasm nasm bison autogen wget autopoint meson ninja-build ragel

export ANDROID_SDK_ROOT="${HOME}/Library/Android/sdk/"
export ANDROID_NDK_ROOT="${HOME}/Library/Android/sdk/ndk/25.1.8937393"

# ./android.sh --full --enable-gpl --disable-x86 --disable-x86-64
# ./android.sh --enable-gpl --enable-openh264 --enable-x264 --disable-x86 --disable-x86-64

./android.sh \
    --enable-gpl \
    --enable-android-media-codec \
    --enable-android-zlib
    #--debug
    #--disable-arm64-v8a
