#!/bin/sh

echo "Setting up Git...\n\n"


git config --global user.name Vincent Wantchalk
git config --global user.email ohergal@gmail.com

git config --global color.ui true
git config --global core.filemode false
git config --global core.autocrlf true

git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch

git config --global alias.aa add --all
git config --global alias.ap add --patch


echo "Setup git finish...\n\n"