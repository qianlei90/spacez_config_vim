scriptencoding utf-8

let g:session_directory        = b:fly_nvim_caches_dir . '/sessions'
let g:session_autosave         = 'yes'
let g:session_autoload         = 'no'
let g:session_default_to_last  = 1
let g:session_command_aliases  = 1
let g:session_verbose_messages = 0
let g:session_persist_font     = 0
let g:session_persist_colors   = 0

nnoremap <Leader>so :SessionOpen<Space>
nnoremap <Leader>ss :SessionSave<Space>
nnoremap <Leader>sc :SessionClose<Space>
nnoremap <Leader>sC :SessionClose<CR>:q<CR>
nnoremap <Leader>sd :SessionDelete<Space>
