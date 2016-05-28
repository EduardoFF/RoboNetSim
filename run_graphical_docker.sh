IMAGE=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -it  --rm \
       -e DISPLAY=$DISPLAY \
       --env="QT_X11_NO_MITSHM=1" \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --net="host" \
       -v ${DIR}:/RoboNetSim \
       $IMAGE \
       /bin/bash

#       --device /dev/ttyUSB0 \
#       -t -i \
 #       --privileged -v /dev/bus/usb:/dev/bus/usb \
