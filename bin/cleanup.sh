#!/bin/bash

rm -rf ~/.vimrc
sed -i 's|source ∼/.dotfiles/etc/bashrc_custom| |g' ~/.bashrc
rm -r ~/.TRASH
