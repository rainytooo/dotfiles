#!/bin/sh

echo "=============================="
echo "Setting up Git...\n\n"

rm -rf $HOME/.gitconfig

git config --global user.name Vincent Wantchalk
git config --global user.email ohergal@gmail.com

git config --global color.ui true
git config --global core.filemode false
# git config --global core.autocrlf true

git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch

git config --global alias.aa add --all
git config --global alias.ap add --patch

echo "Creating symlink for git "

ln -s $HOME/.dotfiles/git/gitignore_global.symlink $HOME/.gitignore_global

echo "Setup git finish...\n\n"
