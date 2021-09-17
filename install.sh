#!/usr/bin/env bash
anisay_config_folder=~/.config/anisay
if [ "$1" == "-h" ] ; then
	echo "$0 usage: 
-------------------
-h	show this help menu
-r	remove anisay and configs
-u	update anisay and configs"
	exit 0

elif [ "$1" == "-r" ] ; then
	echo "removing anisay..."
	rm -f $HOME/.local/bin/anisay && echo "done"
	echo "Remove $HOME/.config/anisay files? y/n"
	read -r userprompt
	if [ $userprompt == "y" ] ; then
		rm -rf $HOME/.config/anisay
		echo "removed config files"
	fi
	exit 0
elif [ "$1" == "-u" ] ; then
	chmod +x anisay
	cp -f anisay $HOME/.local/bin/ && echo 'updated anisay in $HOME/.local/bin/anisay'
	echo "Also update $HOME/.config/anisay files? y/n"
	read -r userprompt
	if [ $userprompt == "y" ] ; then
	cp -f -r ascii/* $anisay_config_folder/ascii && echo "Copied resources to $anisay_config_folder"
	exit 0
	fi

fi
installed=$(command -v anisay)	
if [ -z $installed ] ; then
	chmod +x anisay
	cp -f anisay $HOME/.local/bin/ && echo 'Copied anisay to $HOME/.local/bin/anisay'
else
	echo -en "install.sh: anisay already installed\n"
	echo -n "install.sh: use the '-r' flag to remove or the '-u' flag to update"
fi

if [ ! -d $anisay_config_folder ] ; then
	mkdir -p $anisay_config_folder/ascii
	chmod +x ascii/test.sh
	cp -f -r ascii/* $anisay_config_folder/ascii && echo "Copied resources to $anisay_config_folder"
fi

