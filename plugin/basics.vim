""""""""""""""""""""""""""""""
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

