scriptencoding utf-8

let g:one_allow_italics = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
if has('termguicolors') && b:spacez_config_vim_enable_guicolors
    set termguicolors
else
    set notermguicolors
endif

silent! colorscheme one
