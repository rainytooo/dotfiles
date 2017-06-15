#!/bin/sh

echo "=============================="
echo "Setting up Vim...\n\n"

echo "Creating symlink for Vim "

rm -rf $HOME/.vim && rm -rf $HOME/.vimrc

ln -s $HOME/.dotfiles/vim/vimrc.symlink $HOME/.vimrc

ln -s $HOME/.dotfiles/vim/vim.symlink $HOME/.vim

echo "install vim plugins"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

echo "Setup Vim finish...\n\n"
