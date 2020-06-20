#!/bin/bash

if [[ "`id -un`" != "root"  ]]; then
	echo "MUST BE ROOT!"
	exit
fi

apt update && apt upgrade
apt install -f net-tools sudo 

adduser fpc-deb sudo

