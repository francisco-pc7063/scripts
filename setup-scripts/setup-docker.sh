#!/bin/bash

#must be run as root
#` [ whoami == 'root' ] ` && echo "oi"

apt update && apt upgrade
apt install apt-transport-https ca-certificates curl software-properties-common gnupg2
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
apt install docker-ce
usermod -aG docker $USER