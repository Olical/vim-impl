if exists("b:current_syntax")
  finish
endif

syn region implString start='"' end='"'
syn keyword implFunction fn
syn keyword implKeyword map filter reduce
syn keyword implBool true false
syn keyword implSpecial ; : , \
syn keyword implConditional if
syn match implNumber '\d\+'
syn match implNumber '[-+]\d\+'
syn match implSymbol '\w\+'
syn match implComment "#.*"

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
