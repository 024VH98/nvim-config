"""""""""""""""""""""""""""""""
" PLUGINS USING (VIM-PLUG needs instalation with curl)
" - Install all your plugins running:
" $:source %
" $:PlugInstall
""""""""""""""""""""""""""""""
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/vim-utils/vim-man.git'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" LEADER SHORTCUTS
let mapleader=" "           " leader is space

