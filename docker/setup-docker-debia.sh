#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common


curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#FINGERPRINT: 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
#sudo apt-key fingerprint 0EBFCD88


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

#docker versions: apt-cache madison docker-ce

VERSION_STRING="5:18.09.1~3-0~debian-stretch"
#sudo apt-get install docker-ce=<VERSION_STRING docker-ce-cli=<VERSION_STRING> containerd.io

sudo apt install docker-ce docker-ce-cli containerd.io
