scriptencoding utf-8

let g:tagbar_autofocus   = 1
let g:tagbar_autoclose   = 1
let g:tagbar_compact     = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_sort        = 0
let g:tagbar_map_nexttag = '<C-j>'
let g:tagbar_map_prevtag = '<C-k>'
let g:tagbar_type_go     = {
\   'ctagstype': 'go',
\   'kinds': [
\       'p:package',
\       'i:imports:1',
\       'c:constants',
\       'v:variables',
\       't:types',
\       'n:interfaces',
\       'w:fields',
\       'e:embedded',
\       'm:methods',
\       'r:constructor',
\       'f:functions'
\   ],
\   'sro': '.',
\   'kind2scope': {
\       't': 'ctype',
\       'n': 'ntype'
\   },
\   'scope2kind': {
\       'ctype': 't',
\       'ntype': 'n'
\   },
\   'ctagsbin': 'gotags',
\   'ctagsargs': '-sort -silent'
\ }

nmap <Leader>nm :TagbarToggle<CR>

autocmd FileType markdown let b:tagbar_ignore=1
