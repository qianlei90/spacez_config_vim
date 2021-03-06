scriptencoding utf-8

let g:startify_session_dir         = b:spacez_config_vim_caches_dir.'/sessions'
let g:startify_update_oldfiles     = 1
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root  = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_sort        = 1
let g:startify_session_before_save = [
    \ 'silent! NERDTreeClose'
    \ ]
let g:startify_lists = [
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'files',     'header': ['   MRU']            },
    \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'type': 'commands',  'header': ['   Commands']       },
    \ ]

nnoremap <Leader>sS :Startify<CR>
nnoremap <Leader>so :SLoad<Space>
nnoremap <Leader>ss :SSave!<Space>
nnoremap <Leader>sc :SClose<CR>
nnoremap <Leader>sC :SClose<CR>:q<CR>
nnoremap <Leader>sd :SDelete!<Space>
