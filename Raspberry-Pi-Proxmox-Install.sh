#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - RASPBERRY PI PROXMOX INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."

ip=$(hostname -I)
ip=$(echo "$ip" | sed '/^/ s/ .*//')

curl https://raw.githubusercontent.com/pimox/pimox7/master/RPiOS64-IA-Install.sh > RPiOS64-IA-Install.sh
chmod +x RPiOS64-IA-Install.sh
./RPiOS64-IA-Install.sh


echo "PROXMOX IS RUNNING ON http://$ip:8006"
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
