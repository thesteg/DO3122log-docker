#!/bin/bash

if [ ! -d "/opt/do3122log" ]; then
  mkdir -p /opt/d03122log
fi

cp system/99-do3122.rules /etc/udev/rules.d/
udevadm control --reload-rules

cp start.sh /opt/do3122/
