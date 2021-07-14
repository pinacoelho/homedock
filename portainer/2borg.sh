#!/usr/bin/bash

NAME=borg
PORT=9001
[ -d /persistent/$NAME ] || mkdir /persistent/$NAME
docker run -d \
    --name ${NAME} \
    --restart=always \
    -p $PORT:9000 \
    -v /persistent/$NAME:/data \
    -v /var/run/docker.sock:/var/run/docker.sock \
    portainer/portainer-ce

NAME=borg2
PORT=9002
[ -d /persistent/$NAME ] || mkdir /persistent/$NAME
docker run -d \
    --name ${NAME} \
    --restart=always \
    -p $PORT:9000 \
    -v /persistent/$NAME:/data \
    -v /var/run/docker.sock:/var/run/docker.sock \
    portainer/portainer-ce
