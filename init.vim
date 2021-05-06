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
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
call plug#end()

"""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""
colorscheme gruvbox           " awesome colorscheme
syntax enable               " enable syntax processing

""""""""""""""""""""""""""""""
" SPACES & TABS
""""""""""""""""""""""""""""""
set tabstop=4				" number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set shiftwidth=4
set expandtab			    " tabs are spaces
set smartindent             " set the smart indent on

""""""""""""""""""""""""""""""
" UI CONFIG
""""""""""""""""""""""""""""""
set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
filetype indent on          " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to
set showmatch               " highlight matching [{()}]
set guicursor=              " set the cursor no line in edition
set relativenumber          " it will set to 0 your current line cursor
set noerrorbells            " it will shut down the error sounds
set scrolloff=8             " this will make scroll start with 8 lines
set colorcolumn=80          " this will show a line column to not pass with code
set signcolumn=yes          " this will add a space for git or linter errors

""""""""""""""""""""""""""""""
" SEARCHING
""""""""""""""""""""""""""""""
set incsearch               " search as characters are entered
set nohlsearch                " highlight matches
set smartcase               " it will allow smart search with no case sensitive
" turn off search highlight
" nnoremap <leader>da :nohlsearch<CR>

""""""""""""""""""""""""""""""
" FILES
""""""""""""""""""""""""""""""
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

""""""""""""""""""""""""""""""
" FOLDING
""""""""""""""""""""""""""""""
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent       " fold based on indent level


""""""""""""""""""""""""""""""
" MOVEMENT
""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

" LEADER SHORTCUTS
let mapleader=" "           " leader is comma
" jk is scape
inoremap jk <esc>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession!<CR>
" open ag.vim
nnoremap <leader>a :Ag
" remap to move among windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" toggle UndoTreeShow
nnoremap <leader>u :UndotreeShow<CR>
" show navigation
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" use Rg search
nnoremap <Leader>ps :Rg<space>
" use for resize
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
" jump to definition
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

""""""""""""""""""""""""""""""
" EXTRA CONFIGURACION
""""""""""""""""""""""""""""""

" this detects your root and alsu use your
" git ignore for fast searching
if executable('rg')
    let g:rg_derive_root='true'
endif

" This is for ignore files that you don't want to search
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" This is for file tree to open in 2 split and not show
" extra help information and size to 25
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0

""""""""""""""""""""""""""""""
" EXTRA EXECUTED FUNCTIONS
""""""""""""""""""""""""""""""
" this function will trim all the white spaces on save
fun! TrimWhitespace()
    let l:save=winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup FRAN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

