#!/bin/bash
apt-add-repository -y ppa:ansible/ansible
apt update
apt install -y ansible

dpkg-reconfigure openssh-server
apt install -y x11-apps xinit
