#!/bin/bash

adduser fpc-deb sudo
apt update
apt install build-essential dkms linux-headers-$(uname -r)

sh /media/cdrom0/VBoxLinuxAdditions.run --nox11
shutdown -r now