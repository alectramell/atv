#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

downloadatv() {

	clear
	wget --quiet --no-check-certificate -O /home/$USERNAME/Desktop/apollontv-1.0.deb <debian-url>
	clear
}

clear

installatv() {

	clear
	sudo dpkg -i /home/$USERNAME/Desktop/apollontv-1.0.deb
	clear
	chmod 755 /usr/share/applications/apollontv.desktop
	chmod 755 /usr/share/apollontv/apollontv.sh
	chmod 755 /usr/share/apollontv/stream.sh
	clear
	sleep 1.0
	echo "INSTALLATION COMPLETE!"
	echo "NOTE: run command..   "
	echo "   $ apollontv        "
	echo "         ..to Open ApollonTV in Applications Folder"
	echo "   $ apollontv-desktop"
	echo "         ..to Copy ApollonTV App to Desktop"
	echo "   $ apollontv-help   "
	echo "         ..for Help Using ApollonTV"
	echo "                      "
	read -s -n1 -p "Press [ENTER] to clear this text.."
	clear
}

clear

downloadatv
installatv

clear

