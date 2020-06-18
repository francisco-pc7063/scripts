#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install -f openjdk ssh curl git zlib dirmngr zlib1g-dev gpg make build-essential libssl-dev zlib1g-dev + /
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev + /
libffi-dev liblzma-dev python-openssl libedit-dev build-essential dkms automake autoconf libreadline-dev  + /
libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip net-tools bridgge-utils + /
bridge-utils virt-manager systat sysstat dstat iotop p7zip p7zip-full


sudo snap install dbeaver-ce
sudo snap install discord
sudo snap install code --classic
sudo snap install termius-app
sudo snap install spotify
sudo snap install remmina
sudo snap install android-studio --classic
sudo snap install gnome-system-monitor
sudo snap install vlc
sudo snap install android-studio --classic
sudo snap isntall postman
sudo snap install keepassxc

sudo dpkg -i ./deb/*.deb
sudo apt update && sudo apt upgrade && sudo dpkg -i ./deb/*.deb
