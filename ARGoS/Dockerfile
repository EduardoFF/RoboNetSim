FROM ubuntu:14.04
MAINTAINER Eduardo Feo Flushing <eduardo@idsia.ch>
LABEL Description="ARGoS simulator with RoboNetSim" Vendor="IDSIA" Version="1.0"


RUN apt-get update && apt-get install -y \
git \
libgsl0-dev \
libqt4-dev \
libqt4-gui libqt4-opengl-dev freeglut3-dev libxmu-dev libxi-dev \
build-essential \
cmake  && rm -rf /var/lib/apt/lists/*


WORKDIR /root
USER root

RUN mkdir /RoboNetSim 
RUN set -x \
&& cd /RoboNetSim \
&& ( git clone https://github.com/EduardoFF/argos2-RoboNetSim.git &&  cd argos2-RoboNetSim  && git checkout ) \
&& cd argos2-RoboNetSim/argos2 \
&& ./build.sh release clean \
&& (cd build/simulator && make install ) \
&& (cd build/common/simulator && make install ) \
&& cp launch_argos /usr/bin && rm -rf build
