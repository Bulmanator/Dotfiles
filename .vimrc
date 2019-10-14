" Bulmanator's .vimrc
" Version : 2.0.0

" Functions and custom commands
function! PrintError(msg) abort
    echohl ErrorMsg
    echomsg a:msg
    echohl None
endfunction

function! StripTrailingWhitespace()
    if &ft =~ 'vim' " @Note: More filetypes can be excluded by adding them here
        return
    endif
    mark `
    %s/\s\+$//e
    normal ``
endfunction

function! TabCompleteWord()
    if col('.') > 1 && strpart(getline('.'), col('.') - 2, 3) =~ '^\w'
        return "\<C-P>"
    else
        return "\<Tab>"
    endif
endfunction

function! ToggleSplit()
    " @Note: If this is true the quickfix list is open so we want to ignore it in the count
    if filter(getwininfo(), 'v:val.quickfix || v:val.loclist') != []
        if winnr('$') - 1 > 1
            wincmd o
            cw
        else
            vsplit
        endif
    elseif winnr('$') > 1
       wincmd o
    else
        vsplit
    endif
    wincmd p
endfunction

command! CNext try <bar> cnext <bar> catch <bar> try <bar> cfirst <bar> catch <bar> call PrintError("No Errors") <bar> endtry <bar> endtry
command! LoadProject try <bar> so *.prj <bar> catch <bar> call PrintError("No project file found") <bar> endtry
command! Make if exists('g:ProjectName') <bar> silent exe "make" <bar> cw <bar> else <bar> call PrintError("No project loaded") <bar> endif

" Keybindings

" Project loading and building
nnoremap <f4> :LoadProject<cr>
nnoremap <f5> :Make<cr>

" Searching
nnoremap <space> /
" @Note: These won't work on terminal because they can't differentiate between shift-space and space
nnoremap <s-space> :%s/
vnoremap <s-space> :s/
nnoremap s :nohl<cr>

" Moving around wrapped lines
noremap <silent> j gj
noremap <silent> k gk
noremap <silent> 0 g0
noremap <silent> $ g$

" Jumping paragraphs
" @Note: This also kills two birds with one stone by unmapping the stupid capital letters binds that destroy half your formatting in the event you accidentally turn on caps lock
nnoremap J }
nnoremap K {
vnoremap J }
vnoremap K {

" Switch windows
" @Temp: This is probably going to change because it includes the quickfix window which I want to try prevent entering always
nnoremap <c-w> :wincmd w<cr>

" Swap current line
nnoremap <m-j> mz:m+<cr>
nnoremap <m-k> mz:m-<cr>

" Un/indentation with tab
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
vnoremap > <nop>
vnoremap < <nop>

" Errors
nnoremap e :CNext<cr>

" Auto-complete on tab
inoremap <tab> <c-r>=TabCompleteWord()<cr>

" Toggle vertical split
nnoremap b :call ToggleSplit()<cr>

" Platform specific options
if has('win32')
    let g:PlatformPrefix = "Windows"
    set guifont=Ubuntu_Mono:h14:cANSI,qDRAFT
    set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
    set makeprg=./windows.build
elseif has('macunix')
    let g:PlatformPrefix = "Macos"
    set guifont=Ubuntu\ Mono\ 12
    set mousemodel=popup
    set makeprg=./macos.build
elseif has('unix')
    let g:PlatformPrefix = "Linux"
    set guifont=Ubuntu\ Mono\ 12
    set mousemodel=popup
    set makeprg=./linux.build
    set clipboard=unnamedplus
endif

" Basic options

" @Note: Case statements are a bit screwy with indentation this is the best way I have come up with to get it to work correctly
set cinoptions=l1,b-s
set cinkeys+=0=break

set history=500
set cmdheight=1
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos
set t_Co=256
set shiftwidth=4
set tabstop=4
set textwidth=0
set wrapmargin=0
set backspace=eol,start,indent
set whichwrap=b,s,<,>,h,l
set completeopt=preview
set wildmode=full
set wildmenu
set autoread
set number
set ruler
set lazyredraw
set splitright
set cursorline
set nobackup
set nowb
set autoindent
set smartindent
set expandtab
set smarttab
set cindent
set wrap
set linebreak
set nolist
set hid

" Enable syntax highlighting
syntax on
if has('gui_running')
    colorscheme scheme
else
    " @Note: This is required for terminals to obey the alt/meta keybinds
    set termencoding=latin-1
endif

" Error format for clang
" @Todo: Linking errors? They aren't consistent though
set errorformat=%f:%l:%c:\ %trror:\ %m,%f:%l:%c:\ fatal\ %rror:\ %m,%f:%l:%c:\ %tarning:\ %m,%-G%m

" Searching options
set incsearch
set hlsearch
set smartcase
set magic

" Misc gui options
" Make sure all splits stay equal size and disable audio and visual bells
autocmd VimResized * wincmd =
autocmd GUIEnter * wincmd = 
autocmd GUIEnter * set visualbell t_vb=
autocmd FileType qf wincmd J
autocmd FileType make setlocal noexpandtab
autocmd BufEnter *.prj setlocal filetype=vim
autocmd BufWritePre * call StripTrailingWhitespace()
filetype indent on
set noeb vb t_vb=
set guioptions=ag
set showtabline=0
set switchbuf=useopen,vsplit

" Status bar at the bottom of open files
set laststatus=2
set statusline=%#LineNr#\ File:\ %f%m\ 
set statusline+=%#Default#%=
set statusline+=%#CursorColumn#\ Type:\ %{&filetype==''?'None':''}%Y\ %#LineNr#\ Line:\ %l\ Column:\ %c\ 

