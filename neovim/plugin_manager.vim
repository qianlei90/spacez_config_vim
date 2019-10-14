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
    Plug 'https://git.bugfree.show:30443/joshdick/onedark.vim.git'
    " 支持ansi color
    Plug 'https://git.bugfree.show:30443/powerman/vim-plugin-AnsiEsc'
    " 状态栏
    " NOTICE: 需要先安装字体
    " REF: https://github.com/ryanoasis/nerd-fonts
    Plug 'https://git.bugfree.show:30443/vim-airline/vim-airline'
    " 各个语言的语法高亮、缩进
    Plug 'https://git.bugfree.show:30443/sheerun/vim-polyglot'
    " 格式化table
    Plug 'https://git.bugfree.show:30443/dhruvasagar/vim-table-mode'
    " 中文文档规范化
    Plug 'https://git.bugfree.show:30443/hotoo/pangu.vim'
    " 启动页面
    Plug 'https://git.bugfree.show:30443/mhinz/vim-startify'
    " 快速跳转
    Plug 'https://git.bugfree.show:30443/easymotion/vim-easymotion'
    " 快速对齐
    Plug 'https://git.bugfree.show:30443/junegunn/vim-easy-align'
    " 快速注释
    Plug 'https://git.bugfree.show:30443/scrooloose/nerdcommenter'
    " 目录树
    Plug 'https://git.bugfree.show:30443/scrooloose/nerdtree'
        Plug 'https://git.bugfree.show:30443/Xuyuanp/nerdtree-git-plugin'
    " 模糊搜索
    " NOTICE: 执行:UpdateRemotePlugins后重启
    Plug 'https://git.bugfree.show:30443/Shougo/denite.nvim'
        Plug 'https://git.bugfree.show:30443/Shougo/neomru.vim'
        Plug 'https://git.bugfree.show:30443/Shougo/neoyank.vim'
        Plug 'https://git.bugfree.show:30443/pocari/vim-denite-command-history'
        Plug 'https://git.bugfree.show:30443/iyuuya/denite-ale'
    " 异步语法检查
    Plug 'https://git.bugfree.show:30443/dense-analysis/ale'
    " 异步CVS提示
    Plug 'https://git.bugfree.show:30443/mhinz/vim-signify'
    " 文件头
    Plug 'https://git.bugfree.show:30443/alpertuna/vim-header'
    " 异步补全
    Plug 'https://git.bugfree.show:30443/Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        " python
        Plug 'https://git.bugfree.show:30443/deoplete-plugins/deoplete-jedi'
        " go
        Plug 'https://git.bugfree.show:30443/deoplete-plugins/deoplete-go'
        " zsh
        Plug 'https://git.bugfree.show:30443/deoplete-plugins/deoplete-zsh'
        " vimscript
        Plug 'https://git.bugfree.show:30443/Shougo/neco-vim'
        " 函数原型
        Plug 'https://git.bugfree.show:30443/Shougo/echodoc.vim'
        " 代码片段
        Plug 'https://git.bugfree.show:30443/SirVer/ultisnips'
            Plug 'https://git.bugfree.show:30443/honza/vim-snippets'
        " 英文单词查询
        Plug 'https://git.bugfree.show:30443/ujihisa/neco-look'
    " 代码跳转
    Plug 'https://git.bugfree.show:30443/davidhalter/jedi-vim'
    " :
    Plug 'https://git.bugfree.show:30443/dgryski/vim-godef'
    " 引号括号
    Plug 'https://git.bugfree.show:30443/jiangmiao/auto-pairs'
    Plug 'https://git.bugfree.show:30443/tpope/vim-surround'
        Plug 'https://git.bugfree.show:30443/tpope/vim-repeat'
    " 快速编辑时间
    Plug 'https://git.bugfree.show:30443/tpope/vim-speeddating'
    " 高亮括号
    Plug 'https://git.bugfree.show:30443/luochen1990/rainbow'
    " 高亮复制
    Plug 'https://git.bugfree.show:30443/machakann/vim-highlightedyank'
    " 标签栏
    Plug 'https://git.bugfree.show:30443/majutsushi/tagbar'
    " 类似shell命令的文件管理
    Plug 'https://git.bugfree.show:30443/tpope/vim-eunuch'
    " undo历史
    Plug 'https://git.bugfree.show:30443/simnalamburt/vim-mundo'
    " 图标
    " NOTICE: 这个插件最好最后载入
    " Plug 'https://git.bugfree.show:30443/ryanoasis/vim-devicons'

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
