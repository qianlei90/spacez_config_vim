scriptencoding utf-8

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''

nnoremap <silent> <Leader>ff :LeaderfFile<CR>
nnoremap <silent> <Leader>ft :LeaderfBufTag<CR>
nnoremap <silent> <Leader>fu :LeaderfFunction<CR>
nnoremap <silent> <Leader>fr :LeaderfMru<CR>
nnoremap <silent> <Leader>fs :LeaderfHistorySearch<CR>
nnoremap <silent> <Leader>fc :LeaderfHistoryCmd<CR>
nnoremap <silent> <Leader>fh :LeaderfHelp<CR>
nnoremap <silent> <Leader>fl :LeaderfLine<CR>
nnoremap <silent> <Leader>fe :LeaderfSelf<CR>
nnoremap <silent> <Leader>fg :Leaderf rg<CR>
nnoremap <silent> <Leader>fb :LeaderfBuffer<CR>
