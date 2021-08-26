""""""""""""""""""""""""""""""
" UTILS
""""""""""""""""""""""""""""""
" for yanking in clipboard
" Mac
" set clipboard=unnamed
" Linux
set clipboard=unnamedplus
" highlight last inserted text
nnoremap gV `[v`]
" jk is scape
inoremap jk <esc>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession!<CR>
" use for resize
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

