au BufRead,BufNewFile *.ljs* set filetype=ljavascript
syntax on
colorscheme desert

set title
set hidden
set ruler
set number
set smarttab
set autoindent
set smartindent
set expandtab
set sw=2 ts=2
set backspace=indent,eol,start
set nowrap
set visualbell t_vb=
set mouse=a
set tw=80
set fo+=t
set listchars=
set listchars=trail:°,tab:\|\|
set list
set cb+=unnamed
set hlsearch

:let mapleader = ","

map <F1> :NERDTree <Enter>

map <F2> :set mouse=a<Enter>:echo "MOUSE MODE ON"<Enter>
map <F3> :set mouse= <Enter>:echo "MOUSE MODE OFF"<Enter>

" Ctag helpers
map <C-\> :sp<CR><C-]>
map <F4> :exe ":!ctags -R&"<CR><CR>:echo "Ran ctags"<CR>

" Lusty helpers
map <Leader>f <Leader>lf
map <Leader>r <Leader>lr
map <Leader>b <Leader>lb
map <Leader>j <Leader>lj
