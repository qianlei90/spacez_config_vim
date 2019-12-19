set encoding=utf-8
scriptencoding utf-8

" 全局配置 {{{
    " neovim的python路径
    " NOTICE: 虚拟环境中的python解释器路径
    "         虚拟环境中安装neovim包: pip install neovim
    let g:python_host_prog = '/usr/bin/python2'
    if exists('$SPACEZ_CONFIG_VIM_PYTHON2_PATH')
        let g:python_host_prog = expand('$SPACEZ_CONFIG_VIM_PYTHON2_PATH')
    endif
    let g:python3_host_prog = '/usr/bin/python3'
    if exists('$SPACEZ_CONFIG_VIM_PYTHON3_PATH')
        let g:python3_host_prog = expand('$SPACEZ_CONFIG_VIM_PYTHON3_PATH')
    endif

    " 是否启用插件
    let b:spacez_config_vim_enable_plugins = 1
    if exists('$SPACEZ_CONFIG_VIM_ENABLE_PLUGINS')
        let b:spacez_config_vim_enable_plugins = expand('$SPACEZ_CONFIG_VIM_ENABLE_PLUGINS')
    endif

    " 配色是否启用termguicolors
    let b:spacez_config_vim_enable_guicolors = 1
    if exists('$SPACEZ_CONFIG_VIM_ENABLE_GUICOLORS')
        let b:spacez_config_vim_enable_guicolors = expand('$SPACEZ_CONFIG_VIM_ENABLE_GUICOLORS')
    endif

    " 是否使用github的镜像地址
    let b:spacez_config_vim_github_mirror = 'https://git::@github.com/%s.git'
    if exists('$SPACEZ_CONFIG_VIM_GITHUB_MIRROR')
        let b:spacez_config_vim_github_mirror = expand('$SPACEZ_CONFIG_VIM_GITHUB_MIRROR')
    endif

    " 路径
    let b:spacez_config_vim_root_dir                 = fnamemodify(resolve(expand('$MYVIMRC')), ':p:h:h')
    let b:spacez_config_vim_plugins_dir              = b:spacez_config_vim_root_dir  .'/plugins'
    let b:spacez_config_vim_caches_dir               = b:spacez_config_vim_root_dir  .'/caches'
    let b:spacez_config_vim_snips_dir                = b:spacez_config_vim_root_dir  .'/snips'
    let b:spacez_config_vim_dict_file                = b:spacez_config_vim_root_dir  .'/dict/words'
    let b:spacez_config_vim_neovim_dir               = b:spacez_config_vim_root_dir  .'/neovim'
    let b:spacez_config_vim_neovim_plugin_config_dir = b:spacez_config_vim_neovim_dir.'/plugins'

    " Leader按键
    let g:mapleader = ' '
    nnoremap <Space> <Nop>
" }}}

" 插件 {{{
    if b:spacez_config_vim_enable_plugins
        let b:plugin_manager_file = b:spacez_config_vim_neovim_dir.'/plugin_manager.vim'
        if filereadable(b:plugin_manager_file)
            execute 'source '.b:plugin_manager_file
        endif
        unlet b:plugin_manager_file
    endif
" }}}

" 设置 {{{
    " 路径 {{{
        " 缓存路径
        " NOTICE: 确保这些目录存在
        let &backupdir = b:spacez_config_vim_caches_dir.'/backups'
        let &directory = b:spacez_config_vim_caches_dir.'/swaps'
        let &undodir   = b:spacez_config_vim_caches_dir.'/undos'
        let &dict      = b:spacez_config_vim_dict_file
    " }}}

    " 缩进 {{{
        " tab转空格
        set expandtab
        " tab宽度
        set tabstop=4
        " 缩进的空格数
        set shiftwidth=4
        " 退格删除的空格数，-1与shiftwidth相等
        set softtabstop=-1
        " 缩进取整
        set shiftround
    " }}}

    " 搜索 {{{
        " 搜索时忽略大小写
        set ignorecase
        " 有大写字母时仍大小写敏感
        set smartcase
    " }}}

    " 折叠 {{{
        " 关闭代码折叠
        set nofoldenable
        " 折叠标识
        set foldcolumn=1
        " 折叠后显示的文本
        " function! SpacezConfigVimFuncGetFoldingInfo()
        "     return 'Start: ' . v:foldstart . ' End: ' . v:foldend . ' Level: ' . v:foldlevel
        " endfunction
        " set foldtext=SpacezConfigVimFuncGetFoldingInfo()
    " }}}

    " 文件 {{{
        " 类型检测
        filetype plugin indent on
        " 自动判断编码时，依次尝试以下编码：
        set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
        " 使用unix格式
        silent! set fileformat=unix
        " 自动判断文件格式时，依次尝试以下格式：
        set fileformats=unix,mac,dos
        " 备份文件
        set backup
        " 使用undo文件来保存编辑历史，在重新打开文件后也可以撤销之前的修改
        set undofile
        " 关闭修改过的buffer时隐藏buffer，而不是丢弃
        set hidden
    " }}}

    " 命令行 {{{
        " :substitute替换命令默认启用g标志
        set gdefault
        " 命令行补全忽略部分文件
        " 二进制文件
        set wildignore=*.png,*.jpg,*.gif,*.pdf,*.zip
        " OSX系统
        set wildignore+=*.dmg,*.app,*DS_Store*
        " vim临时文件
        set wildignore+=*~,*.swp,*.bak
        " 开发
        set wildignore+=.git,.svn,*.py[o,c]
        " 其他
        set wildignore+=*.o,*.obj,*.so
    " }}}

    " 界面显示 {{{
        " 语法高亮
        syntax on
        " 括号配对情况,跳转并高亮一下匹配的括号
        set showmatch
        " 显示行号
        set number
        set norelativenumber
        " 突出显示当前行
        set cursorline
        " 显示竖线,防止代码超过最大文本长度
        set colorcolumn=120
        " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
        set scrolloff=0
        " 总是显示标签页
        set showtabline=2
        " 更精简的提示信息
        set shortmess=aIF
        " 分屏时新面板的位置
        set splitright
        set splitbelow
        " 显示字符
        set list
        set listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
        " 不显示模式
        set noshowmode
        " 不更改terminal的光标形状
        set guicursor=

    " }}}

    " 杂项 {{{
        " 延迟重画窗口
        set lazyredraw
        " 粘贴
        " set clipboard+=unnamedplus
        " 切换缓冲区的方式
        set switchbuf=useopen,usetab,vsplit
        " 保存回话的时候保存标签名
        set sessionoptions+=tabpages
    " }}}
" }}}

" 自动命令 {{{
    " 打开文件时光标自动定位到上次的位置
    function! SpacezConfigVimFuncJumpBack()
        let s:ignore_ft = ['gitcommit']
        " vint: -ProhibitUnnecessaryDoubleQuote
        if index(s:ignore_ft, &filetype) < 0 && line("'\"") > 0 && line("'\"") <= line("$")
            execute 'normal! g`"zvzz'
        endif
        " vint: +ProhibitUnnecessaryDoubleQuote
    endfunction
    augroup SpacezConfigVimAutocmdDefault
        autocmd!
        autocmd BufReadPost * :call SpacezConfigVimFuncJumpBack()
    augroup END
" }}}

" 高亮配色 {{{
    " 自定义的高亮组
    highlight SpacezConfigVimHighlightInfo      ctermfg=Black  ctermbg=LightGreen  guifg=Black   guibg=LightGreen
    highlight SpacezConfigVimHighlightWarn      ctermfg=Black  ctermbg=LightYellow guifg=Black   guibg=LightYellow
    highlight SpacezConfigVimHighlightReference term=underline cterm=underline     gui=underline ctermfg=LightBlue guifg=LightBlue
    augroup SpacezConfigVimAutocmdHighlight
        autocmd!
        autocmd Syntax * call matchadd('SpacezConfigVimHighlightInfo',      '\W\zs\<\c\(info\|注意\|notice\|todo\)\>\ze\(:\|：\)')
        autocmd Syntax * call matchadd('SpacezConfigVimHighlightWarn',      '\W\zs\<\c\(warn\|fixme\|bug\)\>\ze\(:\|：\)')
        autocmd Syntax * call matchadd('SpacezConfigVimHighlightReference', '\W\zs\<\c\(ref\|参考\|来源\|reference\|from\)\>\ze\(:\|：\)')
    augroup END

    " 修正光标所在行的高亮
    highlight clear CursorLine
    highlight CursorLine term=underline cterm=underline gui=underline
" }}}

" 快捷键 {{{
    " 页面移动 {{{
        " 确保光标在页面顶部
        nnoremap <C-u> <PageUp>H
        inoremap <C-u> <Esc><PageUp>Hi
        nnoremap <C-d> <PageDown>H
        inoremap <C-d> <Esc><PageDown>Hi
        " 移到最左侧
        nnoremap H ^
        vnoremap H ^
        " 移到最右侧
        nnoremap L $
        vnoremap L $
        " 移到最底部
        nnoremap J L
        vnoremap J L
        " 移到最顶端
        nnoremap K H
        vnoremap K H
    " }}}

    " 标签移动 {{{
        " 跳转到最近使用的标签
        let g:spacez_config_vim_last_active_tab = 1
        augroup SpacezConfigVimAutocmdLastActiveTab
            autocmd!
            autocmd TabLeave * let g:spacez_config_vim_last_active_tab = tabpagenr()
        augroup END
        function! SpacezConfigVimFuncSwitchLastActiveTab()
            if g:spacez_config_vim_last_active_tab <= tabpagenr('$')
                execute 'tabnext '.g:spacez_config_vim_last_active_tab
            endif
        endfunction
        nnoremap <silent> <Leader><Space> :call SpacezConfigVimFuncSwitchLastActiveTab()<CR>

        " 切换到指定的标签
        nnoremap <Leader>1 1gt
        nnoremap <Leader>2 2gt
        nnoremap <Leader>3 3gt
        nnoremap <Leader>4 4gt
        nnoremap <Leader>5 5gt
        nnoremap <Leader>6 6gt
        nnoremap <Leader>7 7gt
        nnoremap <Leader>8 8gt
        nnoremap <Leader>9 9gt

        " 快速切换相邻标签
        nnoremap <silent> <C-p> <Esc>:tabprev<CR>
        nnoremap <silent> <C-n> <Esc>:tabnext<CR>

        " 移动标签页
        nnoremap <A-Left> <Esc>:tabmove -1<CR>
        nnoremap <A-Right> <Esc>:tabmove +1<CR>
    " }}}

    " 窗口移动 {{{
        nnoremap <C-j> <C-W>j
        nnoremap <C-k> <C-W>k
        nnoremap <C-h> <C-W>h
        nnoremap <C-l> <C-W>l
    " }}}

    " 命令行移动 {{{
        cnoremap <C-n> <Down>
        cnoremap <C-p> <Up>
        cnoremap <C-a> <Home>
        cnoremap <C-e> <End>
        cnoremap <A-f> <S-Right>
        cnoremap <A-b> <S-Left>
    " }}}

    " 编辑 {{{
        " 快速保存
        nnoremap <C-s> :w<CR>
        inoremap <C-s> <Esc>:w<CR>
        " 快速新建标签
        nnoremap <C-t> :tabnew<CR>
        " 快速退出
        nnoremap <C-q> :q<CR>

        " 插入模式下的补全快捷键
        inoremap <expr> <C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
        inoremap <expr> <C-k>   pumvisible() ? "\<C-p>" : "\<C-k>"
        inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
        inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

        " 调整缩进后自动选中，方便再次操作
        vnoremap < <gv
        vnoremap > >gv

        nnoremap <Leader>hh :set hlsearch!<CR>

        function! SpacezConfigVimFuncHighlightGroup()
            let l:s = synID(line('.'), col('.'), 1)
            echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
            unlet l:s
        endfun
        nnoremap <Leader>hc :call SpacezConfigVimFuncHighlightGroup()<CR>

    " }}}
" }}}

" 缩写 {{{
    " 垂坠打开缓冲区
    cnoreabbrev vsb vert sb
    " 只留下当前窗口
    cnoreabbrev o only
" }}}
