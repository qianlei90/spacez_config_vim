scriptencoding utf-8

" 普通模式下的快捷键
autocmd FileType denite call s:scv_denite_map()
function! s:scv_denite_map() abort
    " 打开
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    " 水平切分
    nnoremap <silent><buffer><expr> s
    \ denite#do_map('do_action', 'splitswitch')
    " 垂直切分
    nnoremap <silent><buffer><expr> v
    \ denite#do_map('do_action', 'vsplitswitch')
    " 新标签打开
    nnoremap <silent><buffer><expr> t
    \ denite#do_map('do_action', 'tabswitch')
    " 选择动作
    nnoremap <silent><buffer><expr> <Tab>
    \ denite#do_map('choose_action')
    " 退出
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    " 进入筛选模式
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    " 上一个source
    nnoremap <silent><buffer><expr> <C-n>
    \ denite#do_map('restore_sources')
endfunction

" 筛选模式下的快捷键
autocmd FileType denite-filter call s:scv_denite_filter_map()
function! s:scv_denite_filter_map() abort
    imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
    imap <silent><buffer> <C-a> <Home>
    imap <silent><buffer> <C-e> <End>
endfunction

" source
let s:fly_denite_sources = {
    \   '_': {
    \       'matchers': ['matcher_substring', 'matcher_hide_hidden_files'],
    \   },
    \ }
for s:source in keys(s:fly_denite_sources)
    for s:option in keys(s:fly_denite_sources[s:source])
        call denite#custom#source(s:source, s:option, s:fly_denite_sources[s:source][s:option])
    endfor
endfor
unlet s:fly_denite_sources s:source s:option

" option
let s:fly_denite_options = {
    \   'default': {
    \       'auto_resize': v:true,
    \       'prompt': '>>',
    \       'matchers': 'matcher_substring',
    \   },
    \ }
for s:buffer_name in keys(s:fly_denite_options)
    call denite#custom#option(s:buffer_name, s:fly_denite_options[s:buffer_name])
endfor
unlet s:fly_denite_options s:buffer_name

" var
let s:fly_denite_vars = {
    \   'buffer': {
    \       'date_format': '%m-%d-%Y %H:%M:%S',
    \   },
    \   'file_rec': {
    \       'command': ['ag', '--follow', '--nocolor', '--nogroup', '--ignore', '*.pyc', '-g', ''],
    \   },
    \   'file_mru': {
    \       'command': ['ag', '--follow', '--nocolor', '--nogroup', '--ignore', '*.pyc', '-g', ''],
    \   },
    \   'grep': {
    \       'command': ['ag'],
    \       'default_opts': ['--smart-case', '--vimgrep', '--ignore-dir', 'vendor', '-w'],
    \       'recursive_opts': [],
    \       'pattern_opt': [],
    \       'separator': ['--'],
    \       'final_opts': [],
    \   },
    \   'command_history': {
    \       'ignore_command_regexp': ['^q'],
    \   },
    \ }
for s:source in keys(s:fly_denite_vars)
    for s:var in keys(s:fly_denite_vars[s:source])
        call denite#custom#var(s:source, s:var, s:fly_denite_vars[s:source][s:var])
    endfor
endfor
unlet s:fly_denite_vars s:source s:var

" 缩写
cnoreabbrev d Denite
cnoreabbrev db DeniteBufferDir
cnoreabbrev dw DeniteCursorWord
cnoreabbrev dp DeniteProjectDir
cnoreabbrev p -path=
cnoreabbrev f $HOME/Fly2TheMoon
" 快捷键
nnoremap <silent> <Leader>fa :Denite command<CR>
nnoremap <silent> <Leader>fh :Denite command_history<CR>
nnoremap <silent> <Leader>fr :Denite file_mru<CR>
nnoremap <silent> <Leader>fR :Denite register<CR>
nnoremap <silent> <Leader>fb :Denite buffer<CR>
nnoremap <silent> <Leader>fc :Denite file/rec<CR>
nnoremap <silent> <Leader>fe :Denite ale<CR>
nnoremap <silent> <Leader>fy :Denite neoyank<CR>
nnoremap <silent> <Leader>fg :Denite grep<CR>
nnoremap <silent> <Leader>fm :Denite mark<CR>
