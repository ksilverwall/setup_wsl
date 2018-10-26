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

## Plant UML
sudo apt install eog
sudo apt install graphviz
mkdir -p ~/opt/plantuml
curl -JL0 http://sourceforge.net/projects/plantuml/files/plantuml.jar/download > ~/opt/plantuml/plantuml.jar

## Setup Go
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.bashrc 
sudo apt install bison
sudo apt install golang

## Setup R
echo -e "\n## For R package"  | sudo tee -a /etc/apt/sources.list
echo "deb https://cran.rstudio.com/bin/linux/ubuntu $(lsb_release -cs)/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt update
sudo apt install -y r-base

## Setup remote mount point
sudo mkdir /mnt/share
sudo mount -t drvfs '\\lockon.local\SharedRoot' /mnt/share/



sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install python3.6 python3.6-dev

dpkg-reconfigure openssh-server
sudo apt install -y x11-apps xinit

sudo apt install -y libssl-dev libmcrypt-dev libreadline-dev libxslt1-dev libxml2-dev libbz2-dev libcurl4-openssl-dev libpng-dev libjpeg-dev libmcrypt-dev libsqlite-dev libtidy-dev libltdl-dev make autoconf automake re2c lemon
sudo apt install -y libevent-dev -K

phpenv install 5.6.37
