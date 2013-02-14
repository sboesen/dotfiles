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

echo "updating plugins using Vundle"
echo "vim is going to yell, press enter when it does. Press enter to acknowledge this message."
read stuff

system_shell=$SHELL
export SHELL="/bin/sh"
vim +BundleInstall! +BundleClean +qall
export SHELL=$system_shell

echo "compiling command-t support..."
cd $HOME/.vim/bundle/Command-T/ruby/command-t/
/usr/bin/ruby extconf.rb
make
cd
echo "Done installing!"
rm $HOME/install.sh
rm $HOME/README.md
git update-index --assume-unchanged $HOME/install.sh
git update-index --assume-unchanged $HOME/README.md
