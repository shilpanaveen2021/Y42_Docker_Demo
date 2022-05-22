#!/bin/bash

#format timestamp
timestamp=$(date +%Y%m%d%H%M%S)

#build demo project on docker 
echo 'now building demo docker  '
sudo docker build -t y42_docker_demo:$timestamp .

#print time of build
echo 'date and time of build:' 
date
echo "timestamp which used as tag for build --> $timestamp"