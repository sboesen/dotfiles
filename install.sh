#!/usr/bin/env sh

rm -r ~/dotfiles/ 2>/dev/null
git clone https://github.com/sboesen/dotfiles ~/dotfiles
ln -s ~/.emacs.d ~/dotfiles/.emacs.d
mkdir ~/org/wiki

