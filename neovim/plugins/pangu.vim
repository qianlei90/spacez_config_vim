scriptencoding utf-8

augroup FlyAutocmdPluginPangu
    autocmd!
    autocmd BufWritePre *.markdown,*.md,*.text,*.txt call PanGuSpacing()
augroup END
