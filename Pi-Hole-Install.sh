#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - PI-HOLE INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."
echo ""

ip=$(hostname -I)
ip=$(echo "$ip" | sed '/^/ s/ .*//')

apt-get update -y
curl -sSL https://install.pi-hole.net | bash
pihole -a -p

echo ""
echo "========================================================================="
echo "PI-HOLE GUI IS RUNNING ON http://$ip"
echo "PI-HOLE HAS NO PASSWORD BY DEFAULT. TO SET ONE RUN THE FOLLOWING COMMAND.
echo "pihole -a -p"
echo "========================================================================="
echo ""
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
