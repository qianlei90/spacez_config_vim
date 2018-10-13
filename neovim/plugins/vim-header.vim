" Author            : Qian Lei <qianlei90@gmail.com>
" Date              : 2018/01/08
" Last Modified Date: 2018/01/08

scriptencoding utf-8

let g:header_auto_add_header = 0
let g:header_alignment = 1
let g:header_max_size = 10
let g:header_field_filename = 0
let g:header_field_author = 'Qian Lei'
let g:header_field_author_email = 'qianlei90@gmail.com'
let g:header_field_modified_by = 0
let g:header_field_timestamp_format = '%Y/%m/%d'

nnoremap <silent> <Leader>ea :AddHeader<CR>
