#!/usr/bin/env bash
anisay_config_folder=~/.config/anisay
if [ "$1" == "-h" ] ; then
	echo "$0 usage: 
-------------------
-h	show this help menu
-u	launch uninstaller"
	exit 0

elif [ "$1" == "-u" ] ; then
	echo "Uninstalling anisay"
	rm -f $HOME/.local/bin/anisay
	echo "Remove $HOME/.config/anisay files? y/n"
	read -r userprompt
	if [ $userprompt == "y" ] ; then
		rm -rf $HOME/.config/anisay
		echo "removed config files"
	fi
	exit 0

fi
installed=$(command -v anisay)	
if [ -z $installed ] ; then
	chmod +x anisay
	cp anisay $HOME/.local/bin/ && echo 'Copied anisay to $HOME/.local/bin/anisay'
else
	echo -en "install.sh: anisay already installed\n"
	echo -n "install.sh: use the '-u' flag to uninstall"
fi

if [ ! -d $anisay_config_folder ] ; then
	echo "Creating dir at: $anisay_config_folder"
	mkdir -p $anisay_config_folder/ascii
	chmod +x ascii/test.sh
	cp -r ascii/* $anisay_config_folder
	echo "Copied resources to $anisay_config_folder"
fi

