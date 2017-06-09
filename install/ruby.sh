#!/bin/bash

# install rvm

if test ! $(which rvm); then
    \curl -sSL https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
    # echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
else
    echo 'rvm has already installed , now try to upgrade...'
    rvm get stable
fi

# reload rvm

rvm reload

# install ruby

rvm install ruby-2.4.1
# rvm use 2.4.1 --default

rvm use 2.4.1@jekyll --create

gem install jekyll
gem install bundle
