#!/bin/bash

FILE_NAME='node-v14.2.0-linux-x64'
curl https://nodejs.org/dist/v14.2.0/node-v14.2.0-linux-x64.tar.xz --output $FILE_NAME.tar.xz
unxz $FILE_NAME.tar.xz
tar -xf $FILE_NAME.tar
