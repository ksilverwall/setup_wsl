#!/bin/bash

set -eu

sudo apt update

##############################
# Setup python3 env

sudo apt install -y python3-pip
sudo apt install -y python-pip
pip3 install ansible
pip3 install awscli
pip2 install boto3

# other softwares
ansible-playbook wsl_setup.yml -K

##############################
# Should be ansibled

sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install python3.6 python3.6-dev

dpkg-reconfigure openssh-server
sudo apt install -y x11-apps xinit

sudo apt install -y libssl-dev libmcrypt-dev libreadline-dev libxslt1-dev libxml2-dev libbz2-dev libcurl4-openssl-dev libpng-dev libjpeg-dev libmcrypt-dev libsqlite-dev libtidy-dev libltdl-dev make autoconf automake re2c lemon
sudo apt install -y libevent-dev -K

