" Vim syntax file
" Language:	JavaScript
" Maintainer:	Claudio Fleiner <claudio@fleiner.com>
" Updaters:	Scott Shattuck (ss) <ss@technicalpursuit.com>, Spencer Tipping <spencer@spencertipping.com>
" URL:		http://www.fleiner.com/vim/syntax/javascript.vim
" Changes:	(ss) added keywords, reserved words, and other identifiers
"		(ss) repaired several quoting and grouping glitches
"		(ss) fixed regex parsing issue with multiple qualifiers [gi]
"		(ss) additional factoring of keywords, globals, and members
" Last Change:	2006 Jun 19

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
" tuning parameters:
" unlet javaScript_fold

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
endif

" Drop fold if it set but vim doesn't support it.
if version < 600 && exists("javaScript_fold")
  unlet javaScript_fold
endif

syn case match

syn keyword function_keyword            function contained
syn match   function_parameters         /[A-Za-z0-9$_]\+/ contained
syn match   function_parens             /[()]/ contained
syn match   function_region             /\<function\s*([A-Za-z0-9$_, ]*)/ contains=function_parameters,function_keyword,function_parens

syn match   section_region              /^\s*def\.section\s*(".*",\s*function\s*()\s*{/ contains=def_section,section_name
syn match   def_section                 /def.section/ contained contains=def_section_def
syn match   def_section_def             /def/ contained
syn match   section_name                /".*"/ contained

syn match   initializer_region          /^\s*this.initializer\s*(".*",\s*function\s*()\s*{/ contains=initializer,initializer_name
syn match   initializer                 /this.initializer/ contained contains=initializer_this
syn match   initializer_this            /this/ contained
syn match   initializer_name            /".*"/ contained


syn keyword javaScriptCommentTodo      TODO FIXME XXX TBD contained
syn match   javaScriptLineComment      "\/\/.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  javaScriptComment	       start="/\*"  end="\*/" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptSpecial	       "\\\d\d\d\|\\."
syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc
syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc

syn match   javaScriptSpecialCharacter "'\\.'"
syn match   javaScriptNumber	       "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn region  javaScriptRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gi]\{0,2\}\s*$+ end=+/[gi]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn keyword javaScriptConditional	if else switch
syn keyword javaScriptRepeat		while for do in
syn keyword javaScriptBranch		break continue
syn keyword javaScriptOperator		new delete instanceof typeof var
syn keyword javaScriptType		Array Boolean Date Function Number Object String RegExp
syn keyword javaScriptStatement		return with
syn keyword javaScriptBoolean		true false
syn keyword javaScriptNull		null undefined
syn keyword javaScriptIdentifier	arguments this
syn keyword javaScriptLabel		case default
syn keyword javaScriptException		try catch finally throw
syn keyword javaScriptMessage		alert confirm prompt status
syn keyword javaScriptGlobal		self window top parent
syn keyword javaScriptMember		document event location 
syn keyword javaScriptDeprecated	escape unescape
syn keyword javaScriptReserved		abstract boolean byte char class const debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 

syn keyword typeclass_definitions       def initialize finalize typeclass class_generator generator destructor configure should scenario
syn keyword special_typeclass           add_member add_constructor add_destructor class_generator_for class_member class_method
syn keyword typeclass_alias             alias
syn keyword typeclass_inheritance       brings brings_and_removes removes requires
syn keyword typeclass_operators         add remove create

syn match   javaScriptAssignment        /[A-Za-z0-9$_.]\+\s*=[^=]/

syn match   javaScriptSymbol            /[-+*!~&|:?<>,.;{}()\[\]%=^]/

syn sync fromstart
syn sync maxlines=100

if main_syntax == "javascript"
  syn sync ccomment javaScriptComment
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink javaScriptComment		Comment
  HiLink javaScriptLineComment		Comment
  HiLink javaScriptCommentTodo		Todo
  HiLink javaScriptSpecial		Special
  HiLink javaScriptStringS		String
  HiLink javaScriptStringD		String
  HiLink javaScriptCharacter		Character
  HiLink javaScriptSpecialCharacter	javaScriptSpecial
  HiLink javaScriptNumber		Number
  HiLink javaScriptConditional		Conditional
  HiLink javaScriptRepeat		Repeat
  HiLink javaScriptBranch		Conditional
  HiLink javaScriptOperator		Operator
  HiLink javaScriptType			Type
  HiLink javaScriptStatement		Statement
  HiLink javaScriptFunction		Function
  HiLink javaScriptBraces		Function
  HiLink javaScriptError		Error
  HiLink javaScrParenError		javaScriptError
  HiLink javaScriptNull			Keyword
  HiLink javaScriptBoolean		Boolean
  HiLink javaScriptRegexpString		String

  HiLink javaScriptIdentifier		Type
  HiLink javaScriptLabel		Label
  HiLink javaScriptException		Exception
  HiLink javaScriptMessage		Keyword
  HiLink javaScriptGlobal		Keyword
  HiLink javaScriptMember		Keyword
  HiLink javaScriptDeprecated		Exception 
  HiLink javaScriptReserved		Keyword
  HiLink javaScriptDebug		Debug
  HiLink javaScriptConstant		Label

  HiLink typeclass_definitions          Type
  HiLink special_typeclass              Keyword
  HiLink typeclass_alias                Identifier
  HiLink typeclass_inheritance          Keyword
  HiLink typeclass_operators            Special

  HiLink javaScriptAssignment           Identifier

  HiLink function_keyword               Keyword
  HiLink function_parameters            Identifier
  HiLink function_parens                Special
  HiLink javaScriptSymbol               Special

  HiLink section_region                 Special
  HiLink def_section                    Type
  HiLink def_section_def                Type
  HiLink section_name                   String

  HiLink initializer_region             Special
  HiLink initializer                    Type
  HiLink initializer_this               Type
  HiLink initializer_name               String

  delcommand HiLink
endif

let b:current_syntax = "javascript"
if main_syntax == 'javascript'
  unlet main_syntax
endif

" vim: ts=8
