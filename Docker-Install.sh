#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - DOCKER INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."

ip=$(hostname -I)

apt-get update -y
apt install docker.io -y
docker volume create portainer_stuff
docker run -d -p 9443:9443 -p 8000:8000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_stuff:/data portainer/portainer-ce:latest

echo "DOCKER GUI PORTAL (PORTAINER) IS RUNNING ON http://$ip:9443"
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
