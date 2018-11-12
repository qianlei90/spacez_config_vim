" Author            : Qian Lei <qianlei90@gmail.com>
" Date              : 2018/11/12
" Last Modified Date: 2018/11/12
" Last Modified By  : Qian Lei <qianlei90@gmail.com>

scriptencoding utf-8

let g:header_auto_add_header = 0
let g:header_alignment = 1
let g:header_max_size = 6
let g:header_field_filename = 0
let g:header_field_author = 'Qian Lei'
let g:header_field_author_email = 'qianlei90@gmail.com'
let g:header_field_timestamp = 1
let g:header_field_modified_timestamp = 1
let g:header_field_modified_by = 1
let g:header_field_timestamp_format = '%Y/%m/%d'

nnoremap <silent> <Leader>ea :AddHeader<CR>
