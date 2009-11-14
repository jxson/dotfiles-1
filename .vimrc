au BufRead,BufNewFile *.ljs* set filetype=ljavascript
syntax on
colorscheme desert

set ruler
set number
set smarttab
set expandtab
set shiftwidth=2
set backspace=indent,eol,start
set nowrap
set visualbell t_vb=
set mouse=a
set tw=80
set fo+=t
set autoindent

"make vim share X11s clipboard
set cb+=unnamed

map <F1> :set mouse=a<Enter>:echo "MOUSE MODE ON"<Enter>
map <F2> :set mouse= <Enter>:echo "MOUSE MODE OFF"<Enter>
 
source ~/.vim/build.vim
