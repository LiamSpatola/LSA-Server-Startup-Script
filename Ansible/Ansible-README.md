# LSA Server Startup Script - Ansible #
Welcome to the ansible playbook library.

## Ansible Installation ##
`sudo apt install -y software-properties-common` <br>
`sudo add-apt-repository --yes --update ppa:ansible/ansible` <br>
`sudo apt update` <br>
`sudo apt install -y ansible` <br>

## MYSQL Install ##
`wget "https://raw.githubusercontent.com/LiamSpatola/LSA-Server-Startup-Script/issue-%231-(Ansible-Playbooks)/Ansible/MYSQL-Install.yml"` <br>
`ansible-playbook MYSQL-Install.yml` <br>

## Docker Install ##
`wget "https://raw.githubusercontent.com/LiamSpatola/LSA-Server-Startup-Script/issue-%231-(Ansible-Playbooks)/Ansible/Docker-Install.yml"` <br>
`ansible-playbook Docker-Install.yml` <br>

## Secure Server ##
`wget "https://raw.githubusercontent.com/LiamSpatola/LSA-Server-Startup-Script/issue-%231-(Ansible-Playbooks)/Ansible/Secure-Server.yml"` <br>
`ansible-playbook Secure-Server.yml` <br>
