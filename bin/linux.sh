#!/bin/bash
#check if operating system is Linux
if [ $(uname) != "Linux" ];
then
	echo "error: not using linux" >> linuxsetup.log
	exit
fi
#makes .TRASH directory in the root if it does not already exist
cd
if [ ! -d ".TRASH" ];
then
	mkdir ./.TRASH
fi
#changes .nanorc file to .bup_nanorc if it exists in the home directory
if [ -f ./.nanorc ];
then
	cp .nanorc ~/.bup_nanorc
	rm .nanorc
	echo "current .nanorc file has been changed to .bup_nanorc" >> ./.dotfiles/bin/linuxsetup.log
fi
#copies the nanorc file from the etc directory to home directory
cp ./.dotfiles/etc/nanorc .nanorc
#adds a line to the end of the bashrc fle
echo "source ~/.dotfiles/etc/bashrc_custom" >> .bashrc

