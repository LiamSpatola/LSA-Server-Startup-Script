#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - MYSQL INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."
echo ""

apt update
apt install mariadb-server -y

echo ""
echo "================================================================="
echo "INSTALLATION DONE. TO SETUP A PASSWORD, RUN THE FOLLOWING COMMAND"
echo "mysql_secure_installation"
echo "TO CONNECT TO YOUR DATABASE, RUN THE FOLLOWING COMMAND"
echo "mysql"
echo "================================================================="

echo ""
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
