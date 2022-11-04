echo "LSA SERVER STARTUP SCRIPT - SECURE SERVER"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."
echo ""

apt update
apt install unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades
apt install ufw
ufw enable
ufw reload

echo ""
echo "====================================================================================="
echo "INSTALLATION COMPLETE. TO ALLOW A PORT THROUGH THE FIREWALL USE THE FOLLOWING COMMAND"
echo "ufw allow {port number}"
echo "====================================================================================="

echo ""
echo "LSA SERVER STARTUP SCRIPT COMPLETED."
