scriptencoding utf-8

let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_def_reuse_buffer = 1
let g:go_def_mode = 'gopls'

au FileType go nmap <silent> <Leader>gi <Plug>(go-def)
au FileType go nmap <silent> <Leader>go <Plug>(go-def-pop)
au FileType go nmap <silent> <Leader>gs <Plug>(go-def-stack)
au FileType go nmap <silent> <Leader>gv <Plug>(go-def-vertical)
au FileType go nmap <silent> <Leader>gh <Plug>(go-def-split)
au FileType go nmap <silent> <Leader>gt <Plug>(go-def-tab)
au FileType go nmap <silent> <Leader>gr <Plug>(go-referrers)
