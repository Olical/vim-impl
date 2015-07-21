" Vim syntax file
" Language: Impl
" Maintainer: Oliver Caldwell
" Latest Revision: 21 June 2015

if exists("b:current_syntax")
  finish
endif

syn region implString start='"' end='"'
syn keyword implFunction fn
syn keyword implKeyword map filter reduce
syn keyword implBool true false
syn keyword implConditional if
syn match implNumber '\d\+' contained display
syn match implNumber '[-+]\d\+' contained display

hi def link implString string
hi def link implFunction function
hi def link implKeyword keyword
hi def link implNumber number
hi def link implBool boolean
hi def link implConditional conditional
