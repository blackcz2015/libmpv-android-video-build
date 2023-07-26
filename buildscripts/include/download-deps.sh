#!/bin/bash -e

. ./include/depinfo.sh

[ -z "$WGET" ] && WGET=wget

mkdir -p deps && cd deps

# mbedtls
[ ! -d mbedtls ] && git clone --depth 1 --branch v$v_mbedtls https://github.com/Mbed-TLS/mbedtls.git mbedtls

# dav1d
[ ! -d dav1d ] && git clone --depth 1 --branch $v_dav1d https://code.videolan.org/videolan/dav1d.git dav1d

# libxml2
[ ! -d libxml2 ] && git clone --depth 1 --branch v$v_libxml2 --recursive https://gitlab.gnome.org/GNOME/libxml2.git libxml2

# ffmpeg
[ ! -d ffmpeg ] && git clone --depth 1 --branch n$v_ffmpeg https://github.com/FFmpeg/FFmpeg.git ffmpeg

# freetype2
[ ! -d freetype ] && git clone --depth 1 --branch VER-$v_freetype https://gitlab.freedesktop.org/freetype/freetype.git freetype

# fribidi
[ ! -d fribidi ] && git clone --depth 1 --branch v$v_fribidi https://github.com/fribidi/fribidi.git fribidi

# harfbuzz
[ ! -d harfbuzz ] && git clone --depth 1 --branch $v_harfbuzz https://github.com/harfbuzz/harfbuzz.git harfbuzz

# libass
[ ! -d libass ] && git clone --depth 1 --branch $v_libass https://github.com/libass/libass.git libass

# mpv
[ ! -d mpv ] && git clone --depth 1 --branch v$v_mpv https://github.com/mpv-player/mpv.git mpv

# media-kit-android-helper
[ ! -d media-kit-android-helper ] && git clone --depth 1 --single-branch --branch main https://github.com/media-kit/media-kit-android-helper.git

# media_kit
[ ! -d media_kit ] && git clone --depth 1 --single-branch --branch main https://github.com/alexmercerind/media_kit.git

cd ..
