scriptencoding utf-8

" map
let s:fly_denite_keymaps = {
    \   'insert': [
    \       ['<C-a>', '<denite:move_caret_to_head>', 'noremap'],
    \       ['<C-e>', '<denite:move_caret_to_tail>', 'noremap'],
    \       ['<A-f>', '<denite:move_caret_to_one_word_right>', 'noremap'],
    \       ['<A-b>', '<denite:move_caret_to_one_word_left>', 'noremap'],
    \       ['<C-j>', '<denite:move_to_next_line>', 'noremap'],
    \       ['<C-k>', '<denite:move_to_previous_line>', 'noremap'],
    \       ['<C-f>', '<denite:scroll_page_forwards>', 'noremap'],
    \       ['<C-b>', '<denite:scroll_page_backwards>', 'noremap'],
    \       ['<C-n>', '<denite:assign_next_matched_text>', 'noremap'],
    \       ['<C-p>', '<denite:assign_previous_matched_text>', 'noremap'],
    \       ['<C-s>', '<denite:do_action:split>', 'noremap'],
    \       ['<C-v>', '<denite:do_action:vsplit>', 'noremap'],
    \       ['<C-t>', '<denite:do_action:tabswitch>', 'noremap'],
    \       ['<Down>', '<denite:assign_next_text>', 'noremap'],
    \       ['<Up>', '<denite:assign_previous_text>', 'noremap'],
    \   ],
    \   'normal': [
    \       ['<C-n>', '<denite:jump_to_next_source', 'noremap'],
    \       ['<C-p>', '<denite:jump_to_previous_source', 'noremap'],
    \       ['<C-s>', '<denite:do_action:split>', 'noremap'],
    \       ['<C-v>', '<denite:do_action:vsplit>', 'noremap'],
    \       ['<C-t>', '<denite:do_action:tabswitch>', 'noremap'],
    \   ],
    \ }
for s:mode in keys(s:fly_denite_keymaps)
    for s:args in s:fly_denite_keymaps[s:mode]
        call denite#custom#map(s:mode, s:args[0], s:args[1], s:args[2])
    endfor
endfor
unlet s:fly_denite_keymaps s:mode s:args

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
    \       'default_opts': ['--smart-case', '--vimgrep'],
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
nnoremap <silent> <Leader>fa :Denite command<CR>
nnoremap <silent> <Leader>fh :Denite command_history<CR>
nnoremap <silent> <Leader>fr :Denite file_mru<CR>
nnoremap <silent> <Leader>fR :Denite register<CR>
nnoremap <silent> <Leader>fb :Denite buffer<CR>
nnoremap <silent> <Leader>fc :Denite file_rec<CR>
nnoremap <silent> <Leader>fe :Denite ale<CR>
nnoremap <silent> <Leader>fy :Denite neoyank<CR>
nnoremap <silent> <Leader>fg :Denite grep<CR>
nnoremap <silent> <Leader>fm :Denite mark<CR>
