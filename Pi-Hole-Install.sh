#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - PI-HOLE INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."

ip=$(hostname -I)

apt-get update -y
curl -sSL https://install.pi-hole.net | bash

echo "PI-HOLE GUI IS RUNNING ON http://$ip"
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
