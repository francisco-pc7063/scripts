#!/bin/bash

sudo apt install git ssh curl dirmngr zlib1g-dev gpg \
make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl libedit-dev \
build-essential dkms automake autoconf libreadline-dev \
libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip net-tools


asdf plugin-add python
asdf install python 3.8.1 2.7.17
asdf global python 3.8.1
pip install --upgrade pip
pip install virtualenv
