""""""""""""""""""""""""""""""
" EXTRA EXECUTED FUNCTIONS
""""""""""""""""""""""""""""""
" this function will trim all the white spaces on save
" fun! TrimWhitespace()
"     let l:save=winsaveview()
"     keeppatterns %s/\s\+$//e
"     call winrestview(l:save)
" endfun

" augroup FRAN
"     autocmd!
"     autocmd BufWritePre * :call TrimWhitespace()
" augroup END

