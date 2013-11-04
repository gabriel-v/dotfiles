#!/bin/bash

set -x

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function install_keylayouts {
    KEYLAYOUTS_DIR="$HOME/Library/Keyboard Layouts"
    mkdir -p "$KEYLAYOUTS_DIR"
    rm -f "$KEYLAYOUTS_DIR"/'Romanian fast.keylayout'
    rm -f "$KEYLAYOUTS_DIR"/'Romanian fast.icns'
    ln -s "$DOTFILES"/keylayouts/'Romanian fast.keylayout' \
          "$DOTFILES"/keylayouts/'Romanian fast.icns' \
          "$KEYLAYOUTS_DIR"/
}

install_keylayouts
