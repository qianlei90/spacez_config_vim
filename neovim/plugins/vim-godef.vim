scriptencoding utf-8

let g:godef_split = 0
let g:godef_same_file_in_same_window = 1
augroup fly_plugin_vim_godef
    autocmd!
    autocmd FileType go nnoremap <silent> <buffer> <Leader>gg :call GodefUnderCursor()<CR>
augroup END
