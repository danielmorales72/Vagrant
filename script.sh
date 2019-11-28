#!/bin/bash

echo "=== THIS IS BEGINNING OF MY SCRIPT ==="

sudo apt-get update
sudo apt-get -y install cloud-utils
sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo touch /etc/sudoers.d/stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo
sleep 2
sudo su -l stack
sleep 2
sudo apt-get -y install git
git clone https://git.openstack.org/openstack-dev/devstack
sleep 10
echo " === COMPLETED ==="

# cd ~/VirtualBox\ VMs


