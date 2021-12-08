#!/bin/bash

set -e

ROOT_DIR=$(dirname "$(readlink -f "$0")")
CONFIG_DIR="$HOME/.config/nvim"

if [ ! -e "$CONFIG_DIR" ]; then
    mkdir -p "$CONFIG_DIR"
fi

if [ ! -e "$CONFIG_DIR/init.vim" ]; then
    ln -sf "$ROOT_DIR/neovim/init.vim" "$CONFIG_DIR"
    ln -sf "$ROOT_DIR/neovim/plugin_manager.vim" "$CONFIG_DIR"
fi

if [ ! -e "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    curl -fLo  "$HOME/.local/share/nvim/site/autoload/plug.vim" \
        --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvim +PlugInstall +qa
