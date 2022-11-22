#!/bin/bash
if [$(uname -o) != "Linux"] &> linuxsetup.log;
then
	exit
fi

mkdir -p ~/.TRASH

if [ -f ~/.vimrc ];
then 
	mv ~/.vimrc ~/.bup_vimrc
	echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log
fi


cat ../etc/vimrc > ~/.vimrc
echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

