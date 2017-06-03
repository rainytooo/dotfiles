#!/bin/sh

echo "Setting up Zsh...\n\n"


# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Creating symlink for Zsh "

ln -s $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc

echo "Setup Zsh finish...\n\n"
