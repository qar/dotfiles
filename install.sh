#!/usr/bin/bash

set -o errexit
set -o pipefail

ln -s $HOME/Projects/personal/dotfiles/bash_profile $HOME/.bash_profile
cp ./tmux.conf $HOME/.tmux.conf

cp -r vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/
cp vimrc ~/.vimrc

mv ~/.bash_profile ~/.bash_profile.backup
ln -s ./bash_profile ~/.bash_profile

npm install -g commitizen

# Install Tmux
# https://github.com/tmux/tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make

# Config tmux
