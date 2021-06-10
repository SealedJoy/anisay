#!/usr/bin/env bash
anisay_config_folder=~/.config/anisay

if ! which anisay > /dev/null; then
	chmod +x anisay
	cp anisay $HOME/.local/bin/ && echo 'Copied anisay to $HOME/.local/bin/anisay'
else
	echo "anisay is already installed"
fi

if [ ! -d $anisay_config_folder ] ; then
	echo "Creating dir at: $anisay_config_folder"
	mkdir $anisay_config_folder
	chmod +x ascii/test.sh
	cp -r ascii $anisay_config_folder
	echo "Copied resources to $anisay_config_folder"
fi

