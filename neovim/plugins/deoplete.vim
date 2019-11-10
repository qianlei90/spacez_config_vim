scriptencoding utf-8

" 关闭preview特性
set completeopt-=preview
" 自动启动deoplete
let g:deoplete#enable_at_startup = 1
" neco-look查询的字典文件
let g:deoplete#look#words = b:spacez_config_vim_dict_file

call deoplete#custom#option({
\ 'auto_complete_delay': 50,
\ 'smart_case': v:true,
\ 'max_list': 20,
\ 'num_processes': 0,
\ })

call deoplete#custom#source('look', 'min_pattern_length', 3)
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
