scriptencoding utf-8

function FlyFuncPanguFix()
    let a:my_gdefault = &gdefault

    set nogdefault
    call PanGuSpacing()
    let &gdefault = a:my_gdefault
endfunction

nnoremap <silent> <Leader>ep :call FlyFuncPanguFix()<CR>

" augroup FlyAutocmdPluginPangu
"     autocmd!
"     autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call FlyFuncPanguFix()
" augroup END
