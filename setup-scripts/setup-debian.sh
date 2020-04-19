#!/bin/bash
adduser fpc-deb sudo

apt update
apt install git vim-gtk3 ssh curl dirmngr zlib1g-dev gpg \
make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl libedit-dev \
build-essential dkms linux-headers-$(uname -r)

#install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
apt install \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev \
  unzip net-tools
source ~/.bashrc
asdf update

#install asdf-nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 12.16.1 13.12.0
asdf global nodejs 12.16.1

#install asdf-python
asdf plugin-add python
asdf install python 3.8.1 2.7.17
asdf global python 3.8.1
pip install --upgrade pip
pip install virtualenv

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt update && sudo apt install yarn