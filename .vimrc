" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"Personnal Settings.
"More to be added soon.
execute pathogen#infect()
 filetype plugin indent on

syntax on
"Set the 'leader' key to spacebar
let mapleader = "\<Space>"

"Map some actions
nnoremap <Leader>w :%s/\s\+$//<CR>

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
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_
" set hidden
" set ignorecase
" set smartcase
" set showmatch
" set vb
set viminfo+=n$VIM/_viminfo
" set noerrorbells
set history=1000
set undolevels=1000

"set up the geopak.vim file to be read if the .ilv extension is used
autocmd BufRead,BufNewFile *.ilv set filetype=geopak
"add  solorized colors
syntax enable
set background=dark
colorscheme solarized
