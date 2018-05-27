set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "scheme"

" Layout
" hi Example guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Normal       guifg=#FFFFFF guibg=#232323 ctermfg=white ctermbg=235

hi LineNr       guifg=#C8C8C8 guibg=#111111 ctermfg=243 ctermbg=233
hi EndOfBuffer  guifg=#FFFFFF guibg=#232323 ctermfg=white ctermbg=235

hi VertSplit    guibg=#FFFFFF guifg=#232323 ctermfg=white ctermbg=235

hi CursorLineNr guibg=#232323 guifg=#FFFFFF gui=bold ctermfg=235 ctermbg=white cterm=bold
hi CursorLine   guibg=#555555 ctermbg=122 gui=None

hi WildMenu     guifg=#FFFFFF guibg=#232323 gui=bold ctermfg=white ctermbg=235 cterm=bold
hi WarningMsg   guifg=#FFFF00 guibg=#232323 gui=bold ctermfg=226 ctermbg=235 cterm=bold

hi Statement    guifg=#14E934 guibg=#232323 ctermfg=47  ctermbg=235
hi Comment      guifg=#FFFF00 guibg=#232323 ctermfg=226 ctermbg=235
hi Type         guifg=#4FDEAF guibg=#232323 gui=NONE    ctermfg=49 ctermbg=235 cterm=NONE
hi Typedef      guifg=#4FDE59 guibg=#232323 ctermfg=41  ctermbg=235
hi StorageClass guifg=#4FDE59 guibg=#232323 ctermfg=41  ctermbg=235
hi PreProc      guifg=#FFB56C guibg=#232323 ctermfg=208 ctermbg=235
hi Constant     guifg=#66CCFF guibg=#232323 ctermfg=69  ctermbg=235
hi Boolean      guifg=#A06CFF guibg=#232323 ctermfg=63  ctermbg=235
hi String       guifg=#3AFFEA guibg=#232323 ctermfg=51  ctermbg=235
hi Character    guifg=#3AFFEA guibg=#232323 ctermfg=51  ctermbg=235
hi Search       guifg=#232323 guibg=#71DFFF ctermfg=235 ctermbg=81
hi Todo         guifg=#FF3737 guibg=#232323 gui=bold ctermfg=196 ctermbg=235 cterm=bold
hi SpecialChar  guifg=#7359E5 guibg=#232323 ctermfg=63 ctermbg=235

