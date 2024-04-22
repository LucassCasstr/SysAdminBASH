#!/bin/bash

# Antes de executar o script, lembre-se de parar serviços importantes
#chmod +x CentOStoOracle.sh
#./CentOStoOracle.sh

mkdir -p UPGRADE
cd UPGRADE || exit
curl -O https://raw.githubusercontent.com/oracle/centos2ol/main/centos2ol.sh
yum update -y
sudo bash centos2ol.sh
firewall-cmd --permanent --add-port=22/tcp
systemctl restart firewalld
