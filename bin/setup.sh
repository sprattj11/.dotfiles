#!/bin/bash

if [ uname == "Linux" ]; #checks if the output of the command uname equals Linux (if the os is linux or not)
then
	echo >> linuxsetup.log "The operating system is Linux!"
else
	echo >> linuxsetup.log "ERROR: The operating system is not Linux! Quitting now."
fi

FILE=~/.vimrc #sets the file to .vimrc
if [ -f "$FILE" ]; #checks if .vimrc exists in the home directory
then
	mv ~/.vimrc ~/.bup_vimrc #renames .vimrc to .bup_vimrc
	echo >> linuxsetup.log "The file '.vimrc' has been renamed to '.bup_vimrc'"
fi

cp -r ~/vimrc ~/.vimrc #overwrites the vimrc file to .vimrc

echo >> ~/.bashrc "source ~/.dotfiles/etc/bashrc_custom"
