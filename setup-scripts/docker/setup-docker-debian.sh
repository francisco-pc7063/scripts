#!/bin/bash

sudo apt-get update && apt-get upgrade

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
#9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose
