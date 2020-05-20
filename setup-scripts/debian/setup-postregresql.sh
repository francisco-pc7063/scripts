#!/bin/bash

echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main"  >> /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update
apt-get install postgresql-12

service postregresql start

sudo -u postgres psql
