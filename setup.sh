#!/bin/bash
apt-add-repository -y ppa:ansible/ansible
apt update
apt install -y ansible

dpkg-reconfigure openssh-server
apt install -y x11-apps xinit

# install google chrome
bash -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
apt update
apt install -y google-chrome-stable

#install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.bashrc
