#!/usr/bin/env bash

# Clean up old containers
docker kill ros-morse
docker rm ros-morse

# Run ros-morse docker with access to X
xhost +local:`docker inspect --format='{{ .Config.Hostname }}' ros-morse`
docker run -d -it \
       --name ros-morse \
       --privileged \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
       -v ~/TDDE05:/data:rw \
       -v ~/TDDE05/.ros:/root/.ros \
       ros-morse

# Start bash shell in ros-morse docker
docker exec -it ros-morse /bin/bash
