#!/bin/bash

set -x

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

function install_dotfiles {
    rm -rf ~/.dotfiles
    ln -s $DOTFILES ~/.dotfiles
}

function install_vim {
    rm -rf ~/.vim ~/.vimrc ~/.viminfo
    ln -s $DOTFILES/vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
}


function install_bash {
    rm -f ~/.bashrc
    ln -s $DOTFILES/bash/bashrc ~/.bashrc
}


install_dotfiles
install_vim
install_bash
