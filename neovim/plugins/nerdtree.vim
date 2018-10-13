scriptencoding utf-8

let g:NERDTreeBookmarksFile     = b:spacez_config_vim_caches_dir.'/NERDTreeBookmars'
let g:NERDTreeWinPos            = 'left'
let g:NERDTreeNaturalSort       = 1
let g:NERDTreeChDirMode         = 2
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeQuitOnOpen        = 1
let g:NERDTreeMinimalUI         = 1
let g:NERDTreeMapOpenSplit      = 's'
let g:NERDTreeMapOpenVSplit     = 'v'
let NERDTreeIgnore=['\.py[co]$']

nnoremap <silent> <Leader>nn :silent NERDTreeToggle<CR>
nnoremap <silent> <Leader>nf :silent NERDTreeFind<CR>
