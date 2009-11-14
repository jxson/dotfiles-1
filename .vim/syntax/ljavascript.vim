" Language:   Literate JavaScript
" Maintainer: Spencer Tipping <spencer@spencertipping.com>
" Modified:   13 Mar 2009

if exists("b:current_syntax")
  finish
endif

syn case match
runtime!	syntax/javascript.vim

syn match       js_end_tag                      /:\./
syn region	literate_comment	        start=/^\s*:\..*\|\%^/ end=/^\s*::\|\%$/ contains=literate_comment_section,literate_comment_title
syn region      literate_comment_section        start=/^\s*-/ end=/$/ contained
syn region      literate_comment_title          start=/^\s*=/ end=/$/ contained

hi link js_end_tag               Comment
hi link literate_comment         Comment
hi link literate_comment_section Special
hi link literate_comment_title   Identifier

let b:current_syntax = "ljavascript"
