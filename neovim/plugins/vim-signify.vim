scriptencoding utf-8

let g:signify_disable_by_default = 0
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1

nnoremap <silent> <Leader>Gh :SignifyToggleHighlight<CR>
nnoremap <silent> <Leader>Gs :SignifyToggle<CR>
nnoremap <silent> <Leader>Ge :SignifyRefresh<CR>
nnoremap <silent> <Leader>Gn :call feedkeys("\<Plug>(signify-next-hunk)")<CR>
nnoremap <silent> <Leader>Gp :call feedkeys("\<Plug>(signify-prev-hunk)")<CR>
