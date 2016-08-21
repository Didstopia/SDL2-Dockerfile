# Base image for msbuild (uses Mono)
FROM didstopia/msbuild

# Maintainer info
MAINTAINER Pauli Jokela <pauli.jokela@didstopia.com>

# Update and install cross-platform build dependencies
RUN apt-get update
RUN apt-get install -y gcc-4.8-base g++-4.8-multilib gcc-4.8-multilib build-essential libc6-dev-i386 xutils-dev libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev mingw-w64

# Install other dependencies
RUN apt-get install -y python-pip git-core
