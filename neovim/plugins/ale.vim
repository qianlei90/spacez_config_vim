scriptencoding utf-8

let g:ale_linters = {
\   'python': ['flake8'],
\   'go': ['gofmt', 'golint', 'go vet']
\ }
let g:ale_fixers  = {
\   'python': ['remove_trailing_lines', 'trim_whitespace', 'yapf', 'isort'],
\   'go': ['gofmt', 'goimports', 'remove_trailing_lines', 'trim_whitespace'],
\   'vim': ['remove_trailing_lines', 'trim_whitespace'],
\   'sh': ['remove_trailing_lines', 'trim_whitespace', 'shfmt'],
\   'markdown': ['remove_trailing_lines', 'trim_whitespace'],
\   'json': ['remove_trailing_lines', 'trim_whitespace', 'jq'],
\ }

let g:ale_fix_on_save              = 1

let g:ale_open_list                = 0
let g:ale_set_loclist              = 0
let g:ale_set_quickfix             = 1

" 如果 flake8 是安装在虚拟环境中，则禁用全局的 flake8
" 否则会使用全局的代码，导致检查错误
let g:ale_python_flake8_use_global = 0
let g:ale_python_flake8_options    = '--max-line-length=120 --ignore="E121,E123,E126,E226,E24,E704,W503,W504"'

let g:ale_python_pylint_use_global = 0
let g:ale_python_pylint_options    = '--max-line-length=120 --disable="C0103, C0111"'

let g:ale_jq_executable = '/usr/bin/jq'
let g:ale_jq_use_global = 1

nnoremap <silent> <Leader>ef :ALEFix<CR>
