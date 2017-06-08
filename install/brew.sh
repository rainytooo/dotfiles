#!/bin/bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # install brew cask
    echo "Installing Homebrew Cask"
    brew tap caskroom/cask
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the the `brew list check`
    vim
    ack
    diff-so-fancy
    dnsmasq
    git
    tmux
    tree
    wget
    zsh
    libevent
    openssl
    unrar
    dos2unix
)

vim_option="--with-override-system-vim"

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... try upgrade."
        brew upgrade $formula
    else
        if [[ $formula = "vim" ]]
            brew install vim "${vim_option}"
        else
            brew install $formula
        fi
    fi
done


# brew cask install iterm2 google-chrome
