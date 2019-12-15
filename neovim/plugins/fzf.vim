scriptencoding utf-8

" 在所有命令前面加前缀
" let g:fzf_command_prefix='FZF'

inoremap <expr> <c-x><c-k> fzf#vim#complete('cat '.&dict)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
