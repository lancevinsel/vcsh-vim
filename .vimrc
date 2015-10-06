"Personnal Settings.
"
" from Getting Solarized Colors right
"
set nocompatible
set t_Co=16
call pathogen#infect()
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on
set cursorline
set colorcolumn=80
"
"Set the 'leader' key to spacebar
"
let mapleader = "\<Space>"

"Map some actions
nnoremap <leader>w :%s/\s\+$//<CR>
nmap <leader>l :set list!<CR>

"Set the status line options. Make it show more information
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"Set Color Scheme and Font Options
" colorscheme murphy
set guifont=Consolas:h12

"set line no., buffer, search, highlight, autoindent and more
set nu
set relativenumber
set list
set listchars=eol:¬,tab:»\ ,trail:.,extends:>,precedes:<,nbsp:_
" set hidden
" set ignorecase
" set smartcase
" set showmatch
" set vb
set viminfo+=n~/.vim/viminfo
" set noerrorbells
set history=1000
set undolevels=1000

"set up the geopak.vim file to be read if the .ilv extension is used
autocmd BufRead,BufNewFile *.ilv set filetype=geopak
