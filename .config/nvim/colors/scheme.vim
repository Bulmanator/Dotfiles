set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "scheme"

"
" hi Example guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"

hi Normal       guifg=#FFFFFF guibg=#232323
hi NonText      guifg=#FFFFFF guibg=#232323

hi LineNr       guifg=#FFFFFF guibg=#18171C
hi VertSplit    guifg=#FFFFFF

hi CursorLineNr guifg=#FFFFFF guibg=#292931 cterm=NONE
hi CursorLine   guibg=#18171C gui=NONE      cterm=NONE

hi WildMenu     guifg=#FFFFFF
hi WarningMsg   guifg=#EE6C4D
hi ErrorMsg     guifg=#E84855 guibg=#232323

hi Comment      guifg=#F9DC5C

hi StatusLine   guibg=#18171C gui=BOLD
hi StatusLineNC guibg=#18171C gui=BOLD

hi VertSplit    guifg=#18171C guibg=#18171C gui=NONE

hi Todo         guifg=#E84855 guibg=NONE
hi cNote        guifg=#35FF77 guibg=NONE

hi PreProc      guifg=#EE6C4D

hi Statement    guifg=#FFE74C gui=BOLD cterm=BOLD

hi Type         guifg=#96BBBB gui=NONE cterm=NONE
hi Typedef      guifg=#8D99AF
hi StorageClass guifg=#8D99AF

hi Function     guifg=#FF5866
hi Identifier   guifg=#96BBBB

hi Constant     guifg=#7BB1FD
hi Boolean      guifg=#7BB1FD
hi String       guifg=#3185FC
hi Character    guifg=#3185FC
hi SpecialChar  guifg=#EE6C4D

hi Search       guifg=#232323 guibg=#FFC7A2


