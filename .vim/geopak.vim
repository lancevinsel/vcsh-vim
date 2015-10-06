" Vim Geopak syntax file
"    Language: Geopak Coordinate Geometry Input File
"    Revision: 0.1
"  Maintainer: Lance Vinsel <lancevinsel@yahoo.com>com
" Last Change: 2013 July 31
"     Comment:

" For version >= 6.0: Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif
" Keywords include the : character
setlocal iskeyword+=:

" Always ignore case
syn case ignore

" Add rules
syn match todoHome      "^h: "
syn region todoWork     start=/^w: / end=/$/ contains=todoEmail
syn match todoPersonal  "^p: "
syn match todoEmail     "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
syn region todoDone     start=/^x[hwp]: / end=/$/
" geopak syntax rules
syntax keyword gpCommands store describe locate inv equate 
syntax match gpComments /$.*/
syntax keyword gpAuxCommands tak eas
syntax keyword gpSubCommands p m lt rt dis distance traverse to off line intersect point fea feature parcel curve

" Set highlights
highlight link todoHome         Type
highlight link todoWork         String
highlight link todoPersonal     Statement
highlight link todoEmail        Identifier
highlight link todoDone         Underlined

" geopak highlights
highlight link gpCommands       Statement
highlight link gpComments       Comment
highlight link gpAuxCommands    Type
highlight link gpSubCommands   PreProc

let b:current_syntax="geopak"

