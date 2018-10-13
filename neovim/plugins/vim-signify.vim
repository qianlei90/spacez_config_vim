scriptencoding utf-8

let g:signify_disable_by_default = 0
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1

nnoremap <silent> <Leader>gh :SignifyToggleHighlight<CR>
nnoremap <silent> <Leader>gs :SignifyToggle<CR>
nnoremap <silent> <Leader>ge :SignifyRefresh<CR>
nnoremap <silent> <Leader>gn :call feedkeys("\<Plug>(signify-next-hunk)")<CR>
nnoremap <silent> <Leader>gp :call feedkeys("\<Plug>(signify-prev-hunk)")<CR>
