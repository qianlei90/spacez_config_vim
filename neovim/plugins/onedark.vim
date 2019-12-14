scriptencoding utf-8

" 启用TrueColor
" NOTICE: 如果在tmux中，要确保tmux版本号大于等于2.2，并设置了terminal-overrides值
" REF: https://sunaku.github.io/tmux-24bit-color.html#usage
if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if has('termguicolors') && b:spacez_config_vim_enable_guicolors
    set termguicolors
    let g:onedark_termcolors=256
else
    set notermguicolors
    let g:onedark_termcolors=16
endif

let g:onedark_hide_endofbuffer=0
let g:onedark_terminal_italics=1

" 配色主题
" NOTICE: 在配置完onedark之后再启用配色
silent! colorscheme onedark

" 自定义配色
" augroup FlyPlugOneDark
"     autocmd!
"     autocmd ColorScheme * call onedark#extend_highlight("Comment", {"fg": {"cterm": 180, "gui": "#87afff"}})
" augroup END
