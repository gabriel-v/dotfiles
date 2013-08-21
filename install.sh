#!/bin/bash

set -x

DOTFILES="`pwd`"

function install_vim {
    rm -rf ~/.vim ~/.vimrc ~/.viminfo
    ln -s $DOTFILES/vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
}


function install_git {
    rm -f ~/.gitconfig ~/.gitshrc
    ln -s $DOTFILES/git/gitconfig ~/.gitconfig
    ln -s $DOTFILES/git/gitshrc ~/.gitshrc
}


function install_bash {
    rm -f ~/.bashrc
    ln -s $DOTFILES/bash/bashrc ~/.bashrc
}


install_vim
install_git
install_bash
