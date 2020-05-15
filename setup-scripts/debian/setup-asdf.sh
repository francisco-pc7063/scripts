#!/bin/bash

cd $HOME
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo -e "###### ASDF CONFIG #####\n \
. $HOME/.asdf/asdf.sh\n \
. $HOME/.asdf/completions/asdf.bash\n \
################################" >> $HOME/.bashrc
source $HOME/.bashrc
asdf update
