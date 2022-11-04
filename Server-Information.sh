#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - SERVER INFORMATION"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."
echo ""

apt update
ip=$(hostname -I)
ip=$(echo "$ip" | sed '/^/ s/ .*//')
apt install nmap -y
ports=$(nmap $ip)
apt install lm-sensors hddtemp
sensors-detect
sensors=$(sensors)
services=$(service --status-all)

echo ""
echo "===================================================="
echo "IP ADDRESS: $ip"
echo "OPEN PORTS:"
echo "$ports"
echo "SERVICES:"
echo "$services"
echo "SENSOR READINGS:"
echo "$sensors"
echo "===================================================="

echo ""
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
