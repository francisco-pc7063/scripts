#!/bin/bash

[[ "`id -un`" != "root" ]] && echo "Execute as root, exiting..." && exit


sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
apt update && apt install -f postgresql-12 postgresql-contrib-12

systemctl start postgresql


sytemctl start postgresql

sudo -u postgres psql

CREATE EXTENSION pgcrypto;
