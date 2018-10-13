scriptencoding utf-8

let g:jedi#completions_enabled = 0
let g:jedi#auto_initialization = 0
let g:jedi#force_py_version = split(split(system('python --version'))[1], '\.')[0]
augroup fly_plugin_jedi_vim
    autocmd!
    autocmd FileType python nnoremap <silent> <buffer> <Leader>gg :call jedi#goto()<CR>
    autocmd FileType python nnoremap <silent> <buffer> <Leader>ga :call jedi#goto_assignments()<CR>
    autocmd FileType python nnoremap <silent> <buffer> <Leader>gd :call jedi#goto_definitions()<CR>
    autocmd FileType python nnoremap <silent> <buffer> <Leader>gu :call jedi#usages()<CR>
    autocmd FileType python nnoremap <silent> <buffer> <Leader>gr :call jedi#rename()<CR>
    autocmd FileType python nnoremap <silent> <buffer> <Leader>gD :call jedi#show_documentation()<CR>
augroup END
