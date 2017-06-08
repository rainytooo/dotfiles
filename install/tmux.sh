#!/bin/sh

echo "Setting up Tmux...\n\n"

CURRENT_DIR=`pwd`

echo "Creating symlink for Tmux "

ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf

# for tmux plugin

mkdir -p $HOME/.tmux/
cd $HOME/.tmux/ && git clone https://github.com/tmux-plugins/tmux-resurrect.git
cd $HOME/.tmux/ && git clone https://github.com/tmux-plugins/tmux-continuum.git

tmux source-file ~/.tmux.conf

cd $CURRENT_DIR

echo "Setup Tmux finish...\n\n"
