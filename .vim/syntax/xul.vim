" Vim syntax file
" Language:	XUL

if exists("b:current_syntax")
    finish
endif

runtime! syntax/xml.vim
unlet b:current_syntax
syn include @xmlJS syntax/javascript.vim

syn match xmlScriptDelimiter /<\/\?script[^<>]*>/ contained
syn region xmlScript start=/<script[^<>]*>/ end="</script>" skip=/\n/ contains=@xmlJS,xmlScriptDelimiter

hi link xmlScriptDelimiter Identifier

" vim: ts=8
