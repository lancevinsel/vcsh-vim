"
" from Getting Solarized Colors right
"
set nocompatible
set t_Co=16
filetype off " turn off filetype until pathogen is called
execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
if version >= 600
	filetype plugin indent on
endif
set cursorline
set colorcolumn=80
"
"Set the 'leader' key to spacebar
"
let mapleader = "\<Space>"
"
" Map some actions
" strip blank line
nnoremap <leader>b :g/^$/d<CR>
" Set the easymotion j and k functions to <leader>j and k
nmap <leader>j <plug>(easymotion-j)
nmap <leader>k <plug>(easymotion-k)
" toggle the showing of tabs, ends line, etc
nmap <leader>l :set list!<CR>
" open NERDTree - the NERDTree options are at the bottom os this file
nnoremap <leader>n :NERDTree<CR>
" Set the easymotion s function to <leader>s
nmap <leader>s <plug>(easymotion-s2)
" strip trailing whitespace
nnoremap <leader>w :%s/\s\+$//e<CR>
"
"Set the status line options. Make it show more information
"
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"
"Set Color Scheme and Font Options
" colorscheme murphy
set guifont=Consolas:h12
"
"set line no., buffer, search, highlight, autoindent and more
"
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
"
"set up the geopak.vim file to be read if the .ilv extension is used
"
autocmd BufRead,BufNewFile *.ilv set filetype=geopak
" Only do this part when compiled with support for autocommands
if has("autocmd")
	" Enable file type detection
	filetype on

	" Syntax of these languages is fussy over tabs Vs spaces
        autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab
        autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab

	" Customisations based on house-style (arbitrary)
	autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

	" Treat .rss files as XML
	autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
"
" NERDTree options
"
let NERDTreeShowHidden=1
"
