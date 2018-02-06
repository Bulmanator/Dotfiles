set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "scheme"

" Layout
" hi Example guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Normal       guifg=#FFFFFF guibg=#232323
hi LineNr       guifg=#C8C8C8 guibg=#111111
hi EndOfBuffer  guifg=#FFFFFF guibg=#232323

hi VertSplit    guibg=#FFFFFF guifg=#232323

hi CursorLineNr guibg=#232323 guifg=#FFFFFF gui=bold
hi CursorLine   guibg=#232323 gui=underline 

hi WildMenu     guifg=#FFFFFF guibg=#232323 gui=bold

hi Statement    guifg=#14E934 guibg=#232323
hi Comment      guifg=#FFFF00 guibg=#232323
hi Type         guifg=#4FDEAF guibg=#232323 gui=NONE
hi Typedef      guifg=#4FDE59 guibg=#232323
hi StorageClass guifg=#4FDE59 guibg=#232323
hi PreProc      guifg=#FFB56C guibg=#232323
hi Constant     guifg=#6C9CFF guibg=#232323
hi Boolean      guifg=#A06CFF guibg=#232323
hi String       guifg=#3AFFEA guibg=#232323
hi Character    guifg=#3AFFEA guibg=#232323
hi Search       guifg=#232323 guibg=#71DFFF 
hi Todo         guifg=#FF3737 guibg=#232323 gui=bold
hi SpecialChar  guifg=#7359E5 guibg=#232323

