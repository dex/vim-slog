syn region slogEntry start=/^\[/ end=/\]$/ oneline contains=slogTimestamp,slogHost,slogMod,slogLvl,slogAttr,slogFileLine keepend
syn match slogFile =[^\[\]:]\+= contained
syn match slogLine =\d\+= contained
syn region slogFileLine matchgroup=slogDelim start=/\[/ end=/\]$/ contained contains=slogFile,slogLine
syn region slogAttr matchgroup=slogDelim start=/\[/ end=/\]/ contained nextgroup=slogFileLine
syn region slogLvl matchgroup=slogDelim start=/\[/ end=/\]/ contained nextgroup=slogAttr
syn region slogMod matchgroup=slogDelim start=/\[/ end=/\]/ contained nextgroup=slogLvl
syn region slogHost matchgroup=slogDelim start=/\[/ end=/\]/ contained nextgroup=slogMod
syn region slogTimestamp matchgroup=slogDelim start=/^\[/ end=/\]/ contained nextgroup=slogHost

syn region slogFsm start=/^PRIMARY_FSM/ end=/$/ oneline contains=slogKeywordFsm,slogState
syn match slogKeywordFsm =\<PRIMARY_FSM\>= contained
syn match slogState =<\h\+>= contained

hi def link slogTimestamp Function
hi def link slogHost WildMenu
hi def link slogMod Identifier
hi def link slogLvl Number
hi def link slogAttr PreProc
hi def link slogFileLine LineNr
hi def link slogFile CursorLineNr
hi def link slogLine Number
hi def link slogDelim Question

"hi def link slogFsm Number
hi def link slogKeywordFsm ErrorMsg
hi def link slogState rubyRegexp
