" File              : plugin_manager.vim
" Date              : 14.10.2018
" Last Modified Date: 14.10.2018
" Author            : Qian Lei <qianlei90@gmail.com>
" Date              : 2018/08/01
" Last Modified Date: 2018/08/01

scriptencoding utf-8

" 第三方插件 {{{
    let g:plug_threads = 64
    let g:plug_timeout = 20

    call plug#begin(b:spacez_config_vim_plugins_dir)

    " 配色
    Plug 'joshdick/onedark.vim'
    " 支持ansi color
    Plug 'powerman/vim-plugin-AnsiEsc'
    " 状态栏
    " NOTICE: 需要先安装字体
    " REF: https://github.com/ryanoasis/nerd-fonts
    Plug 'vim-airline/vim-airline'
    " 各个语言的语法高亮、缩进
    Plug 'sheerun/vim-polyglot'
    " 格式化table
    Plug 'dhruvasagar/vim-table-mode'
    " 中文文档规范化
    Plug 'hotoo/pangu.vim'
    " 启动页面
    Plug 'mhinz/vim-startify'
    " 快速跳转
    Plug 'easymotion/vim-easymotion'
    " 快速对齐
    Plug 'junegunn/vim-easy-align'
    " 快速注释
    Plug 'scrooloose/nerdcommenter'
    " 目录树
    Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
    " 模糊搜索
    " NOTICE: 执行:UpdateRemotePlugins后重启
    Plug 'Shougo/denite.nvim'
        Plug 'Shougo/neomru.vim'
        Plug 'Shougo/neoyank.vim'
        Plug 'pocari/vim-denite-command-history'
        Plug 'iyuuya/denite-ale'
    " 异步语法检查
    Plug 'w0rp/ale'
    " 异步CVS提示
    Plug 'mhinz/vim-signify'
    " 文件头
    Plug 'alpertuna/vim-header', { 'commit': '312c2c' }
    " 异步补全
    Plug 'Shougo/deoplete.nvim', { 'tag': '4.1', 'do': ':UpdateRemotePlugins' }
        " python
        Plug 'zchee/deoplete-jedi'
        " go
        Plug 'zchee/deoplete-go'
        " zsh
        Plug 'zchee/deoplete-zsh'
        " vimscript
        Plug 'Shougo/neco-vim'
        " 函数原型
        Plug 'Shougo/echodoc.vim'
        " 代码片段
        Plug 'SirVer/ultisnips'
            Plug 'honza/vim-snippets'
        " 英文单词查询
        Plug 'ujihisa/neco-look'
    " 代码跳转
    Plug 'davidhalter/jedi-vim'
    Plug 'dgryski/vim-godef'
    " 引号括号
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
        Plug 'tpope/vim-repeat'
    " 快速编辑时间
    Plug 'tpope/vim-speeddating'
    " 高亮括号
    Plug 'luochen1990/rainbow'
    " 高亮复制
    Plug 'machakann/vim-highlightedyank'
    " 标签栏
    Plug 'majutsushi/tagbar'
    " 类似shell命令的文件管理
    Plug 'tpope/vim-eunuch'
    " undo历史
    Plug 'simnalamburt/vim-mundo'
    " 图标
    " NOTICE: 这个插件最好最后载入
    Plug 'ryanoasis/vim-devicons'

    call plug#end()
" }}}

" 载入插件的配置
for b:plug in keys(g:plugs)
    " 载入配置文件
    let b:plug_config_file = b:spacez_config_vim_neovim_plugin_config_dir.'/'.fnamemodify(b:plug, ':t:r').'.vim'
    if isdirectory(g:plugs[b:plug]['dir']) && filereadable(b:plug_config_file)
        " TODO: 增加对python可执行文件的判断，如果python或python3不可执行，则不载入相关的插件
        " 相关的插件：denite、deoplete
        execute 'source '.b:plug_config_file
    endif
endfor
unlet b:plug b:plug_config_file
