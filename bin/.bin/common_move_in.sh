#!/bin/bash

if ! [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My ZSH"
    curl -L http://install.ohmyz.sh | sh

    # Remove the default config in favor of our own later on in this script
    rm $HOME/.zshrc
fi

if ! [ -d "$HOME/Code" ]; then
    mkdir $HOME/Code
fi

cd ~/Code

if ! [ -d "$HOME/Code/dotfiles" ]; then
    git clone git@codesaloon.com:jason/dotfiles.git
    cd dotfiles
else
    cd dotfiles
    git pull
fi
CWD=`pwd`

if ! [ -e "$HOME/bin"]; then
    mkdir $HOME/bin/
    cd $HOME/bin/
    curl -O http://orgmode.org/worg/code/awk/ical2org.awk
fi

if ! [ -e "$HOME/.vimrc" ]; then
    echo "Linking vim settings..."
    ln -s $CWD/vim $HOME/.vim
    ln -s $CWD/vim/vimrc $HOME/.vimrc
fi

if ! [ -e "$HOME/.zshrc" ]; then
    echo "Linking .zshrc..."
    ln -s $CWD/zshrc $HOME/.zshrc
fi

# OS X Only setup
if [[ $OSTYPE == darwin* ]]; then
    if ! [ -e "$HOME/.amethyst" ]; then
        echo "Linking amethyst config..."
        ln -s $CWD/amethyst $HOME/.amethyst
    fi

    if [ -e "/usr/bin/vagrant" ] && [ -e "$CWD/../vagrant-vmware-license.lic" ]; then
        echo "Installing Vagrant support for VMWare Fusion..."
        vagrant plugin install vagrant-vmware-fusion
        vagrant plugin license vagrant-vmware-fusion "$CWD/../vagrant-vmware-license.lic"
    fi
fi

echo "Done."
