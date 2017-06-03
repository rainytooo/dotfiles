#!/bin/sh

echo "Setting up Vim...\n\n"

echo "Creating symlink for Vim "

ln -s $HOME/.dotfiles/vim_without_plugin/vimrc.symlink $HOME/.vimrc

ln -s $HOME/.dotfiles/vim_without_plugin/vim.symlink $HOME/.vim

echo "Setup Vim finish...\n\n"
