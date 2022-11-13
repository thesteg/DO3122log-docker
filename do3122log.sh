#!/bin/bash

cd /opt/do3122log

docker kill do3122log

if [ "$1" == "stop" ]; then
  exit 0
fi

docker stop do3122log
docker system prune --force

docker run --name do3122log \
  --volume /tmp:/datalog \
  --device=/dev/do3122link:/dev/do3122link \
  do3122log:latest

exit 0
