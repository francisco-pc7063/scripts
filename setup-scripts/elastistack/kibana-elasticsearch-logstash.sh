#!/bin/bash

sudo apt update && sudo apt install -f openjdk

#install elasticsearch
sudo apt-get install -f apt-transport-https

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update && sudo apt install -f elasticsearch

#install kibana
sudo apt install update && sudo apt install -f kibana

#install logstash
sudo apt update && sudo apt install -f logstash
