#!/bin/bash

rm -r ~/.vimrc #removes .vimrc file

LINE="source ~/.dotfiles/bashrc_custom"
sed -i '/$LINE/d' ~/.bashrc #replaces the line with nothing, effectively removing it

rm -r ~/.TRASH
