scriptencoding utf-8

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''
let g:Lf_PopupPreviewPosition = 'bottom'
let g:Lf_CommandMap = {
    \ '<C-]>': ['<C-v>'],
    \ '<Down>': ['<C-n>'],
    \ '<Up>': ['<C-p>'],
    \ '<Home>': ['<C-a>'],
    \ '<End>': ['<C-e>'],
    \ '<C-p>': ['<C-o>'],
    \ '<C-Up>': ['<Up>'],
    \ '<C-Down>': ['<Down>'],
    \ }

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
