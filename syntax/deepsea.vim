if exists("b:current_syntax")
    finish
endif

syn keyword myKeyword if then else let in case switch end error event log load call assert default put

syn match myFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match myNumber '\<[+-]\=\d\+\>'

syn match myComment "--.*$"
syn region myComment start="{-" end="-}" extend

syn region myString start='"' skip=/\v\\./ end='"'
syn region myString start="'" skip=/\v\\./ end="'"

syn keyword myType Int Float Char Bool type

syn match myApp "$"

hi def link myKeyword Keyword
hi def link myBool Boolean
hi def link myType Type
hi def link myFunction Identifier
hi def link myNumber Number
hi def link myApp NonText
hi def link myComment Comment
hi def link myString String

let b:current_syntax = "deepsea"
