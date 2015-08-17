if exists("b:current_syntax")
  finish
endif

syn region implString start='"' end='"'
syn keyword implFunction fn
syn keyword implBool true false
syn keyword implConditional if
syn match implSpecial '[^\\][;:,\\]'
syn match implSymbol '[a-zA-Z0-9\-<>]\+'
syn match implComment "[^\\]#.*"

syn match implNumber '\d\+'
syn match implNumber '[-+]\d\+'
syn match implNumber '\d\+\.\d*'
syn match implNumber '[-+]\d\+\.\d*'
syn match implNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match implNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match implNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match implNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

hi def link implString string
hi def link implFunction function
hi def link implKeyword keyword
hi def link implNumber number
hi def link implBool boolean
hi def link implSpecial special
hi def link implConditional conditional
hi def link implSymbol identifier
hi def link implComment comment

let b:current_syntax = 'impl'
