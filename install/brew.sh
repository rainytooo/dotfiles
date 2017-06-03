#!/bin/sh

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
    'vim --with-override-system-vim'
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
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done
