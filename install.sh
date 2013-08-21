#!/bin/bash

set -x

function install_vim {
    rm -rf ~/.vim ~/.vimrc
    ln -s `pwd`/vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
}


install_vim
