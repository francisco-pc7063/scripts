#!/bin/bash

sudo echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main"  >> /etc/apt/sources.list.d/pgdg.list

sudo wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-12

sudo service postregresql start

sudo -u postgres psql
