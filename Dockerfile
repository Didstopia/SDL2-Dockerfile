# Base image for GCC/G++ 4.8
FROM ryccoo/gcc-4.8

# Maintainer info
MAINTAINER Pauli 'Dids' Jokela <pauli.jokela@didstopia.com> "https://github.com/Didstopia"

# Update and install SDL2, dependencies and Mingw for cross-platform building
RUN apt-get update
RUN apt-get install -y libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev mingw-w64

# Specific to my workflow, but simply install python & pip
RUN apt-get install -y python-pip
