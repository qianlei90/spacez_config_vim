#!/bin/bash
# Author            : Qian Lei <qianlei90@gmail.com>
# Date              : 2018/12/27
# Last Modified Date: 2018/12/27
# Last Modified By  : Qian Lei <qianlei90@gmail.com>

curl -fLo  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qa
