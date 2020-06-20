#!/bin/bash



if [[ "`id -un`" = "root" ]]; then	
	apt install -y curl
	echo "root detected..."
	curl -sL https://deb.nodesource.com/setup_12.x | bash -
	apt install -y nodejs
else
	sudo apt install -y curl
	echo "not root running with sudo..."
	curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
	sudo apt install -y nodejs
fi
