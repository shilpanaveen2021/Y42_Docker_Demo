#!/bin/bash

#format timestamp
timestamp=$(date +%Y%m%d%H%M%S)

#start minkube 
minikube start

#set minikube environemnt to docker
eval $(minikube docker-env)

#build docker image locally 
docker build -t y42_docker_demo .

#run locally
kubectl run y42demo --image y42_docker_demo --image-pull-policy Never --port 80

#expose port 
kubectl expose pod y42demo --port 80 --name y42demos --type NodePort

#print time of deployment
echo 'date and time of deployment:' 
date
echo "timestamp which used as tag for deployment --> $timestamp"



