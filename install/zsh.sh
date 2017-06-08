#!/bin/sh

echo "=============================="
echo "Setting up Zsh...\n\n"

if test ! $(which upgrade_oh_my_zsh); then
    upgrade_oh_my_zsh
else
    # install oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
fi

echo "Creating symlink for Zsh "

rm -rf $HOME/.zshrc

ln -s $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc

echo "Setup Zsh finish...\n\n"
