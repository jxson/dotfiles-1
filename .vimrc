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
set colorcolumn=80
set fo+=t
set listchars=trail:°,tab:\ \
set list
set cb+=unnamed
set hlsearch

set popt=paper:letter,

:let mapleader = ","

map <F1> :NERDTreeToggle <Enter>

" Remove trailing whitespace
:nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Lusty helpers
map <Leader>f <Leader>lf
map <Leader>b <Leader>lb

" Dont pop up warning when lusty cant start
let g:LustyExplorerSuppressRubyWarning = 1
let g:LustyJugglerSuppressRubyWarning = 1

" Brief mode for javascript
let g:SimpleJsIndenter_BriefMode = 1

" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
          \ ['1', 'red'],
          \ ['2', 'green'],
          \ ['6', 'cyan'],
          \ ['3', 'yellow'],
          \ ['4', 'blue'],
          \ ]

" vim-clojure-static
" ------------------
let g:clojure_align_multiline_strings = 1

let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^match']

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

" inneR text objects
" e.g. dip (delete inner paragraph) is now drp
onoremap r i

" Split Pane quick switching
noremap <C-h> <C-W>h
noremap <C-i> <C-W>l
noremap <C-n> <C-W>j
noremap <C-e> <C-W>k
