scriptencoding utf-8

" 使用ascii字体，防止终端下乱码
let g:airline_symbols_ascii                        = 1
"  缓存高亮，更快
let g:airline_highlighting_cache                   = 1
" 当fileformat为标准的utf-8:unix时，不显示fileformat
let g:airline#parts#ffenc#skip_expected_string     = 'utf-8[unix]'
" 启用标签栏
let g:airline#extensions#tabline#enabled           = 1
" 显示分隔的窗口
let g:airline#extensions#tabline#show_splits       = 1
" 不显示buffer
let g:airline#extensions#tabline#show_buffers      = 0
" 不显示关闭按钮
let g:airline#extensions#tabline#show_close_button = 0
" 状态栏格式
let g:airline#extensions#tabline#formatter         = 'unique_tail'
" 标签栏的数字类型，0：窗口，1：标签编号，2：同时
let g:airline#extensions#tabline#tab_nr_type       = 1

if !exists('g:airline_symbols')
    let g:airline_symbols                          = {}
endif
let g:airline_symbols.linenr                       = ''
let g:airline_symbols.maxlinenr                    = ''
