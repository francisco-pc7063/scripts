#!/bin/bash

#test for root
[[ "`id -un`" = "root" ]] && echo "I'm ROOT"
#test for not root
[[ "`id -un`" != "root" ]] && echo "I'm not ROOT"

#conditional for root test
if [[ "`id -un`" = "root"  ]]; then
	echo "ROOT"
else
	echo "NO"
fi
