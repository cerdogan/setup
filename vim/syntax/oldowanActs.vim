" Vim syntax file
" Language:         Oldowan action definitions
" Author:       		Can Erdogan (cerdogan3@gatech.edu)
" Latest Revision:  13 September 2012

if exists("b:current_syntax")
  finish
endif

" Match comments
syn match comments "/.*$"

" Match variables
syn match variables '[xy]\{1}\d\{1,5}' 

" Match equations
syn match equations 'Eq' 
syn match equations 'InEq' 
syn match equations 'At' 
syn match equations 'AtLeft' 
syn match equations 'AtRight' 
syn match equations '(' 
syn match equations ')' 
syn match equations 'Used' 
syn match equations 'Unused' 
syn match equations 'CanJumpTo' 
syn match equations 'CanGoTo' 
syn match equations 'OnGround' 
syn match equations 'Supported' 
syn match equations 'Complex' 
syn match equations 'Merged' 
syn match equations 'Clear' 
syn match equations 'CounterBalanced' 
syn match equations 'Increment' 
syn match equations 'Set' 
syn match equations 'On(' 

" Match floating points
syn match numbers '|' 
syn match keywords '!' 

" Match the keywords
syn keyword keywords FullName Name Preconditions AddEffects DeleteEffects NumObjects 

" Setup syntax highlighting
let b:current_syntax = "oldowanActs"
hi def link keywords        Keyword
hi def link equations       Special
hi def link comments       Comment
hi def link numbers        Constant
hi def link variables       Type
