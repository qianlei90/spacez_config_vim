scriptencoding utf-8

" 第三方插件 {{{
    let g:plug_threads    = 64
    let g:plug_timeout    = 20
    let g:plug_url_format = b:spacez_config_vim_github_mirror

    call plug#begin(b:spacez_config_vim_plugins_dir)

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "                                display                                "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " 配色
    Plug 'laggardkernel/vim-one'
    " 状态栏
    Plug 'itchyny/lightline.vim', { 'as': 'lightline' }
    " 启动页面
    Plug 'mhinz/vim-startify'
    " 高亮括号
    Plug 'luochen1990/rainbow'
    " 高亮复制
    Plug 'machakann/vim-highlightedyank'

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "                                operate                                "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " 快速跳转
    Plug 'easymotion/vim-easymotion'
    " f/F/t/T优化
    Plug 'rhysd/clever-f.vim', { 'as': 'clever-f' }
    " 搜索优化
    Plug 'junegunn/vim-slash'
    " 模糊搜索
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    " 快速对齐
    Plug 'junegunn/vim-easy-align', { 'for': ['zsh', 'vim'] }
    " 整体移动
    Plug 'matze/vim-move'
    " 目录树
    Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    " 引号括号
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    " 类似shell命令的文件管理
    Plug 'tpope/vim-eunuch'
    " undo历史
    Plug 'simnalamburt/vim-mundo'
	" copy / paste
	Plug 'roxma/vim-paste-easy'
    Plug 'roxma/vim-tmux-clipboard'

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "                              develop                                  "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " 快速注释
    Plug 'scrooloose/nerdcommenter', { 'for': ['go', 'python', 'zsh', 'vim'] }
    " Golang开发
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
    " 源码跳转
    Plug 'majutsushi/tagbar', { 'for': ['go', 'python', 'zsh', 'vim'] }
    " 异步补全
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        " python
        Plug 'deoplete-plugins/deoplete-jedi', { 'for': 'python' }
        " zsh
        Plug 'deoplete-plugins/deoplete-zsh', { 'for': 'zsh' }
        " 英文单词查询
        Plug 'ujihisa/neco-look'
        " 代码片段
        Plug 'SirVer/ultisnips', { 'for': ['go', 'python'] }
        Plug 'honza/vim-snippets', { 'for': ['go', 'python'] }
        " vimscript
        Plug 'Shougo/neco-vim', { 'for': 'vim' }
    " 异步语法检查
    Plug 'dense-analysis/ale', { 'for': ['go', 'python', 'json', 'markdown', 'vim'] }
    " 异步CVS提示
    Plug 'mhinz/vim-signify'
    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'rhysd/git-messenger.vim', { 'as': 'git-messenger' }
    " 格式化table
    Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }
    " 中文文档规范化
    Plug 'hotoo/pangu.vim', { 'for': ['markdown', 'txt'] }

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "                                Special                                "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " 图标，放在最后
    Plug 'ryanoasis/vim-devicons'
    Plug 'vwxyutarooo/nerdtree-devicons-syntax', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "                                Legacy                                 "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " 文件头
    " Plug 'alpertuna/vim-header'
    " 代码跳转
    " Plug 'davidhalter/jedi-vim'
    " Plug 'dgryski/vim-godef'
    " 快速编辑时间
    " Plug 'tpope/vim-speeddating'
    " 显示函数签名
    " echodoc不显示golang的函数签名，暂时禁用
    " Plug 'Shougo/echodoc.vim'
    " 模糊搜索
    " NOTICE: 执行:UpdateRemotePlugins后重启
    " Plug 'Shougo/denite.nvim'
    "     Plug 'Shougo/neomru.vim'
    "     Plug 'Shougo/neoyank.vim'
    "     Plug 'pocari/vim-denite-command-history'
    "     Plug 'iyuuya/denite-ale'

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
