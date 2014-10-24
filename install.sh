#!/bin/bash

set -x

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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


function install_zsh {
    rm -f ~/.zshrc
    ln -s $DOTFILES/zsh/zshrc ~/.zshrc
}


function install_python {
    rm -f ~/.pythonstartup.py
    ln -s $DOTFILES/python/pythonstartup.py ~/.pythonstartup.py
}


function install_psql {
    rm -f ~/.psqlrc
    ln -s $DOTFILES/psql/psqlrc ~/.psqlrc
}


function install_tmux {
    rm -f ~/.tmux.conf
    ln -s $DOTFILES/tmux/tmux.conf ~/.tmux.conf
}


function install_slate {
    rm -f ~/.slate
    ln -s $DOTFILES/slate/slate ~/.slate
}


install_vim
install_git
install_bash
install_zsh
install_python
install_psql
install_tmux
install_slate
