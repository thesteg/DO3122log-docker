#!/bin/bash

if [ ! -d "/opt/do3122log" ]; then
  mkdir -p /opt/d03122log
fi

cp system/99-do3122.rules /etc/udev/rules.d/
udevadm control --reload-rules

cp system/do3122log.service /etc/systemd/system/
cp do3122log.sh /opt/do3122log/
