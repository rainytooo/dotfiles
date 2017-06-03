#!/bin/sh

echo "Setting up Tmux...\n\n"



echo "Creating symlink for Tmux "

ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf

echo "Setup Tmux finish...\n\n"
