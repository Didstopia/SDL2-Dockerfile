FROM ryccoo/gcc-4.8

MAINTAINER Pauli 'Dids' Jokela <pauli.jokela@didstopia.com> "https://github.com/Didstopia"

RUN apt-get update
RUN apt-get install -y libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev mingw-w64
