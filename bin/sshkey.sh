#!/bin/bash

set -x

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

function install_ssh_key {
    if [ ! -d ~/.ssh ]; then
        mkdir ~/.ssh
        chmod 700 ~/.ssh
    fi
    if [ ! -f ~/.ssh/authorized_keys ]; then
        touch ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys
    fi
    cat $DOTFILES/ssh/id_rsa.pub >> ~/.ssh/authorized_keys
}

install_ssh_key
