#!/bin/bash
# Author            : Qian Lei <qianlei90@gmail.com>
# Date              : 2018/12/27
# Last Modified Date: 2018/12/27
# Last Modified By  : Qian Lei <qianlei90@gmail.com>

set -e

ROOT_DIR=$(dirname "$(readlink -f "$0")")
CONFIG_DIR="$HOME/.config/nvim"

if [ ! -e "$CONFIG_DIR" ]; then
    mkdir -p "$CONFIG_DIR"
fi

if [ ! -e "$CONFIG_DIR/init.vim" ]; then
    ln -sf "$ROOT_DIR/neovim/init.vim" "$CONFIG_DIR"
fi
if [ ! -e "$CONFIG_DIR/snips" ]; then
    ln -sf "$ROOT_DIR/snips" "$CONFIG_DIR"
fi
if [ ! -e "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    curl -fLo  "$HOME/.local/share/nvim/site/autoload/plug.vim" \
        --create-dirs https://git.bugfree.show:30443/junegunn/vim-plug/raw/branch/master/plug.vim
fi

nvim +PlugInstall +qa
