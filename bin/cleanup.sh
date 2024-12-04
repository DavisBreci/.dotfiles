#!/bin/bash
#removes .nanorc, removes the last line of bashrc_custom, removes .TRASH directory
cd
rm .nanorc
sed -i 's|source ~/.dotfiles/etc/bashrc_custom||g' .bashrc
rm -rf .TRASH
