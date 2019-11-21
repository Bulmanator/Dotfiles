set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "scheme_v2"

" hi Example guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" #2F2E38

hi Normal       guifg=#FFFFFF guibg=#232323
hi NonText      guifg=#FFFFFF guibg=#232323

hi LineNr       guifg=#FFFFFF guibg=#18171C
hi VertSplit    guifg=#FFFFFF guibg=#232323

hi CursorLineNr guifg=#FFFFFF guibg=#292931 cterm=NONE
hi CursorLine   guibg=#18171C gui=NONE      cterm=NONE

hi WildMenu     guifg=#FFFFFF guibg=#232323
hi WarningMsg   guifg=#EE6C4D guibg=#232323
hi ErrorMsg     guifg=#E84855 guibg=#232323

hi Comment      guifg=#F9DC5C guibg=#232323
hi Todo         guifg=#E84855 guibg=#232323

hi PreProc      guifg=#EE6C4D guibg=#232323

hi Statement    guifg=#FFE74C guibg=#232323 gui=BOLD cterm=BOLD

hi Type         guifg=#96BBBB guibg=#232323 gui=NONE cterm=NONE
hi Typedef      guifg=#8D99AF guibg=#232323
hi StorageClass guifg=#8D99AF guibg=#232323

hi Function     guifg=#FF5866 guibg=#232323
hi Identifier   guifg=#96BBBB guibg=#232323

hi Constant     guifg=#7BB1FD guibg=#232323
hi Boolean      guifg=#7BB1FD guibg=#232323
hi String       guifg=#3185FC guibg=#232323
hi Character    guifg=#3185FC guibg=#232323
hi SpecialChar guifg=#EE6C4D guibg=#232323

hi Search       guifg=#232323 guibg=#FFC7A2


