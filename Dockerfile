# Base image for Ubuntu 16.04
FROM ubuntu:16.04

# Maintainer info
MAINTAINER Pauli Jokela <pauli.jokela@didstopia.com>

# Update and install cross-platform build dependencies
RUN apt-get update
RUN apt-get install -y gcc-5 g++-5 libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev mingw-w64

# Install other dependencies
RUN apt-get install -y python-pip git-core
