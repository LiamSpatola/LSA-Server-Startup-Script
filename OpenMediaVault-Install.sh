#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - OPENMEDIAVAULT INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."
echo ""

ip=$(hostname -I)
ip=$(echo "$ip" | sed '/^/ s/ .*//')

apt update

wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | bash

echo ""
echo "================================================================="
echo "INSTALLATION SUCCESFUL. GUI IS RUNNING ON http://$ip"
echo "================================================================="
echo ""
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
