scriptencoding utf-8

augroup fly_plugin_vim_speeddating
    autocmd!
    autocmd VimEnter * :SpeedDatingFormat %Y/%m/%d
augroup END
