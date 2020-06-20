#!/bin/bash

sudo apt install dirmngr gpg curl

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 12.16.1 13.12.0
asdf global nodejs 13.12.0

touch $HOME/.default-npm-packages
echo -e "react \
react-dom	\
react-scripts	\
react-router-dom	\
redux	\
react-redux	\
redux-logger	\
express	\
nodemon	" >> $HOME/.default-npm-packages
