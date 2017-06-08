#!/bin/sh

echo "=============================="
echo "Setting up Tmux...\n\n"

echo "Creating symlink for Tmux "

rm -rf $HOME/.tmux.conf && ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf

# for tmux plugin
rm -rf $HOME/.tmux && mkdir -p $HOME/.tmux/

git clone https://github.com/tmux-plugins/tmux-resurrect.git $HOME/.tmux/tmux-resurrect.git 
git clone https://github.com/tmux-plugins/tmux-continuum.git $HOME/.tmux/tmux-continuum.git 

tmux source-file ~/.tmux.conf

echo "Setup Tmux finish...\n\n"
