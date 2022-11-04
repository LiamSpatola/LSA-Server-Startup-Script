#!/bin/bash

echo "LSA SERVER STARTUP SCRIPT - RASPBERRY PI PROXMOX INSTALL"
echo "RUN THIS SCRIPT AS ROOT. DO NOT USE SUDO."

echo "INSTALLATION CAN'T BE DONE DIRECTLY FROM THIS SCRIPT. PLEASE RUN THE FOLLOWING COMMANDS WHEN THE SCRIPT EXITS"
echo "curl https://raw.githubusercontent.com/pimox/pimox7/master/RPiOS64-IA-Install.sh > RPiOS64-IA-Install.sh"
echo "chmod +x RPiOS64-IA-Install.sh"
echo "./RPiOS64-IA-Install.sh"
echo "WE APOLOGISE FOR THE INCONVENIENCE."

echo "EXITING IN 3 SECONDS."
timer_start=$SECONDS
full_time=$(( timer_start + 3 ))

until [ $SECONDS == $full_time];
do
  
done

echo "LSA SERVER STARTUP SCRIPT COMPLETED."
