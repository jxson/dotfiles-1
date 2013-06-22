filetype indent plugin on

syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

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
set listchars=trail:°,tab:\ \ 
set list
set cb+=unnamed
set hlsearch

set popt=paper:letter,

:let mapleader = ","

map <F1> :NERDTreeToggle <Enter>

map <F2> :set mouse=a<Enter>:echo "MOUSE MODE ON"<Enter>
map <F3> :set mouse= <Enter>:echo "MOUSE MODE OFF"<Enter>

" Ctag helpers
map <C-\> :sp<CR><C-]>
map <F4> :exe ":!ctags -R&"<CR><CR>:echo "Ran ctags"<CR>

" Remove trailing whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Lusty helpers
map <Leader>f <Leader>lf
map <Leader>r <Leader>lr
map <Leader>b <Leader>lb
map <Leader>j <Leader>lj

" Dont pop up warning when lusty cant start
let g:LustyExplorerSuppressRubyWarning = 1
let g:LustyJugglerSuppressRubyWarning = 1

" Settings for VimClojure
let vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
let vimclojure#ParenRainbow=1           " Rainbow parentheses'!

" vimlatex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" Remappings for Colemak
" ----------------------

" Standard VI 'Homerow' Arrows
noremap n j
noremap e k
noremap i l

" o/O = beginning/end of line
noremap o ^
noremap O $

" s/S = Start/Start at BOL (inSert)
noremap s i
noremap S I

" k/K = repeat/reverse last search
noremap k n
noremap K N

" l/L = new Line below/above
noremap l o
noremap L O

" Switch ; and :
noremap ; :

" N = joiN liNe
noremap N J

" j/J = Jump to end of word/WORD
noremap j e
noremap J E

" Split Pane quick switching
noremap <C-h> <C-W>h
noremap <C-i> <C-W>l
noremap <C-n> <C-W>j
noremap <C-e> <C-W>k
