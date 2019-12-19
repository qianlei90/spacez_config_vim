scriptencoding utf-8

let g:signify_disable_by_default = 0
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1

nnoremap <silent> <Leader>eh :SignifyToggleHighlight<CR>
nnoremap <silent> <Leader>es :SignifyToggle<CR>
nnoremap <silent> <Leader>er :SignifyRefresh<CR>
nnoremap <silent> <Leader>en :call feedkeys("\<Plug>(signify-next-hunk)")<CR>
nnoremap <silent> <Leader>ep :call feedkeys("\<Plug>(signify-prev-hunk)")<CR>
