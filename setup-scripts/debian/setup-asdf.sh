#!/bin/bash

cd $HOME
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo "###### ASDF CONFIG ##### \
. $HOME/.asdf/asdf.sh \
. $HOME/.asdf/completions/asdf.bash \
################################" >> $HOME/.bashrc
source $HOME/.bashrc
asdf update
