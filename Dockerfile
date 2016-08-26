# Base image for msbuild (uses Mono)
FROM didstopia/msbuild

# Maintainer info
MAINTAINER Pauli Jokela <pauli.jokela@didstopia.com>

# Update and install cross-platform build dependencies
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y \
    gcc \
    g++ \
    gcc-multilib \
    g++-multilib \
    build-essential \
    xutils-dev \
    libsdl2-dev libsdl2-dev:i386 \
    libsdl2-gfx-dev libsdl2-gfx-dev:i386 \
    libsdl2-image-dev libsdl2-image-dev:i386 \
    libsdl2-mixer-dev libsdl2-mixer-dev:i386 \
    libsdl2-net-dev libsdl2-net-dev:i386 \
    libsdl2-ttf-dev libsdl2-ttf-dev:i386 \
    libreadline6-dev \
    libncurses5-dev \
    mingw-w64 \
    cmake

# Install other dependencies
RUN apt-get install -y python-pip git-core
