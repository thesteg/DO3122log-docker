#!/bin/bash

git submodule update --init --recursive

cd DO3122log
git reset --hard origin/main

cd ..

docker build -t do3122log:latest .
