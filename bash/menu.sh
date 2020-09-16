#!/bin/bash




MENU=" ===== MY MENU =====
exit: Leaves menu
"


CONTROL=0
while [ $CONTROL -eq 0 ]; do
	clear
	echo "$MENU"
	read -p "Choose: " OPTION


	case $OPTION in
		exit)
			echo "GoodBye..."
			CONTROL=1
		;;
		*)
			echo "Do something..."
		;;
	esac


done













exit
