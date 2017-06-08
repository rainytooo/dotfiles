#!/bin/sh

echo "=============================="
echo "Setting up Zsh...\n\n"

if test ! $(which upgrade_oh_my_zsh); then
    # install oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && rm -rf $HOME/.zshrc \
    && ln -s $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc 
else
    upgrade_oh_my_zsh
fi

echo "Creating symlink for Zsh "

rm -rf $HOME/.zshrc

ln -s $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc

echo "Setup Zsh finish...\n\n"
