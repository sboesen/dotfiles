#!/usr/bin/env sh

# Backup existing .vim stuff

echo "THIS SCRIPT WILL NOT BACK UP YOUR SHIT. IF YOU NEED A BACKUP OF YOUR .git, .vimrc, .zshrc COPY THE LINE BELOW AND RUN IT."
echo 'today=`date +%Y%m%d`; for i in $HOME/.git $HOME/.gitmodules $HOME/.zsh $HOME/.zshrc $HOME/.zsh_plugins $HOME/.vim $HOME/.vimrc; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done'
echo "Press enter to continue."
read stop


echo "removing existing git repo (if exists)"
rm -rf $HOME/.git $HOME/.vim $HOME/.vimrc $HOME/.zsh $HOME/.zshrc $HOME/.zsh_plugins $HOME/.gitmodules $HOME/dotfiles dotfiles $HOME/bin bin

git clone --recursive http://github.com/sboesen/dotfiles.git dotfiles
echo "updating..."
cd $HOME/dotfiles

echo "moving files into place..."
mv -f -v .* ..
mv -f -v * ..

cd $HOME/.vim/bundle/vundle
git checkout master

rm $HOME/install.sh
rm $HOME/README.md
git update-index --assume-unchanged $HOME/install.sh
git update-index --assume-unchanged $HOME/README.md

# Install cask for emacs
curl -fsSkL https://raw.github.com/cask/cask/master/go | python
cd ~/.emacs.d
~/.cask/bin/cask install
