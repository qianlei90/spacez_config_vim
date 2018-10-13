scriptencoding utf-8

map  <Leader>j  <Plug>(easymotion-prefix)
map  <Leader>jf <Plug>(easymotion-bd-f)
nmap <Leader>jF <Plug>(easymotion-overwin-f)
map  <Leader>js <Plug>(easymotion-bd-f2)
nmap <Leader>jS <Plug>(easymotion-overwin-f2)
map  <Leader>jj <Plug>(easymotion-bd-jk)
nmap <Leader>jJ <Plug>(easymotion-overwin-line)
nmap <Leader>j; <Plug>(easymotion-next)
nmap <Leader>j, <Plug>(easymotion-prev)

" 大小写智能
let g:EasyMotion_smartcase = 1
" 取消高亮
let g:EasyMotion_move_highlight = 0
