" Vim syntax file
" Language:         CPLEX LP 
" Author:						Adapted from an example of "Clearmoments", http://vim.wikia.com/wiki/Creating_your_own_syntax_files 
" Maintainer:       Can Erdogan (cerdogan3@gatech.edu)
" Latest Revision:  12 September 2012

if exists("b:current_syntax")
  finish
endif

" Match comments
syn match comments "\\.*$"

" Match variables
syn match variables '[xy]\{1}\d\{1,5}' 

" Match equations
syn match equations 'eq\d\{1,5}'
syn match equations 'ineq\d\{1,5}'

" Match floating points
syn match numbers '\d\+\.\d*' 
syn match numbers '[-+]\d\+\.\d*' 

" Match the keywords
syn keyword keywords Maximize Bounds End Subject To

" Setup syntax highlighting
let b:current_syntax = "cplexlp"
hi def link keywords        Keyword
hi def link equations       Special
hi def link comments       Comment
hi def link numbers        Constant
hi def link variables       Type
