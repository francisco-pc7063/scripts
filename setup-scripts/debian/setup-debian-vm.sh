#!/bin/bash

if [[ "`id -un`" != "root"  ]]; then
	echo "MUST BE ROOT"
	return
else


./setup-debian.sh

adduser fpc-deb sudo
apt install build-essential dkms linux-headers-$(uname -r)

sh /media/cdrom0/VBoxLinuxAdditions.run --nox11
shutdown -r now
