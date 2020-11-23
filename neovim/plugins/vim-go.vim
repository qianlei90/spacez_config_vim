scriptencoding utf-8

let g:go_def_mapping_enabled    = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_def_reuse_buffer       = 1
let g:go_def_mode               = 'gopls'
let g:go_fmt_options            = {
\ 'gofmt': '-s',
\ }

au FileType go nmap <silent> <Leader>gi <Plug>(go-def)
au FileType go nmap <silent> <Leader>go <Plug>(go-def-pop)
au FileType go nmap <silent> <Leader>gs <Plug>(go-def-stack)
au FileType go nmap <silent> <Leader>gv <Plug>(go-def-vertical)
au FileType go nmap <silent> <Leader>gh <Plug>(go-def-split)
au FileType go nmap <silent> <Leader>gt <Plug>(go-def-tab)
au FileType go nmap <silent> <Leader>gr <Plug>(go-referrers)

" sync highlight
let g:go_highlight_array_whitespace_error    = 1
let g:go_highlight_chan_whitespace_error     = 1
let g:go_highlight_extra_types               = 1
let g:go_highlight_space_tab_error           = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators                 = 1
let g:go_highlight_functions                 = 1
let g:go_highlight_function_parameters       = 0
let g:go_highlight_function_calls            = 1
let g:go_highlight_types                     = 1
let g:go_highlight_fields                    = 1
let g:go_highlight_build_constraints         = 1
let g:go_highlight_generate_tags             = 1
let g:go_highlight_variable_declarations     = 1
let g:go_highlight_variable_assignments      = 1
