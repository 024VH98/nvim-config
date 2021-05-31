" use Rg search
nnoremap <Leader>ps :Rg<space>
" this detects your root and alsu use your
" git ignore for fast searching
if executable('rg')
    let g:rg_derive_root='true'
endif

