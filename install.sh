#!/bin/bash
# Author            : Qian Lei <qianlei90@gmail.com>
# Date              : 2018/12/27
# Last Modified Date: 2018/12/27
# Last Modified By  : Qian Lei <qianlei90@gmail.com>

set -e

ROOT_DIR=$(dirname "$(readlink -f "$0")")

if [ ! -e "$HOME/.config/nvim" ]; then
    mkdir -p "$HOME/.config/nvim"
fi

if [ ! -e "$HOME/.config/nvim/init.vim" ]; then
    ln -sf "$ROOT_DIR/neovim/init.vim" "$HOME/.config/nvim"
fi

curl -fLo  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qa
