#!/bin/bash

docker stop do3122log
docker system prune --force

docker run --name do3122log \
  -v /tmp:/tmp
  --device=/dev/do3122link:/dev/do3122link \
  do3122log:latest
