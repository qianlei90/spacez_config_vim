scriptencoding utf-8

let g:go_def_mapping_enabled = 0
let g:go_def_reuse_buffer = 1

au FileType go nmap <Leader>go <Plug>(go-def)
au FileType go nmap <Leader>gi <Plug>(go-def-pop)
au FileType go nmap <Leader>gr <Plug>(go-referrers)
au FileType go nmap <Leader>gv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gs <Plug>(go-def-split)
