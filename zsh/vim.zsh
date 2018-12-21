#!/bin/zsh
# Author            : Qian Lei <qianlei90@gmail.com>
# Date              : 2018/10/24
# Last Modified Date: 2018/10/24

# neovim的配置
if [ -f "$HOME/.config/nvim/init.vim" ]; then
    alias vimrc="vim $HOME/.config/nvim/init.vim"
fi

# alias
if type nvim > /dev/null 2>&1; then
    alias v="nvim"
    alias vi="nvim"
    alias vim="nvim"
    export EDITOR="nvim"
fi
