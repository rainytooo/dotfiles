#!/bin/sh

echo "=============================="
echo "Setting up Vim...\n\n"

echo "Creating symlink for Vim "

rm -rf $HOME/.vim && rm -rf $HOME/.vimrc

ln -s $HOME/.dotfiles/vim_without_plugin/vimrc.symlink $HOME/.vimrc

ln -s $HOME/.dotfiles/vim_without_plugin/vim.symlink $HOME/.vim

git clone https://github.com/python-mode/python-mode.git $HOME/.vim/python-mode


echo "Setup Vim finish...\n\n"
