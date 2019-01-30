" Basic

" Vim remembers 500 lines of history
set history=500
" Automatically reload file if changed externally
set autoread

" Leader commands, fast saving with ,w in normal mode
let mapleader = ","
let g:mapleader = ","

" UI Configuration
set ruler
set cmdheight=1
set hid

" Line Numbering by default
set number

" Split into right side buffer and keep vsplits the same size
set splitright
autocmd VimResized * wincmd =
autocmd GUIEnter * wincmd =

" Platform Stuff
if has('win32')
    let g:PlatformPrefix = 'Win'
elseif has('macunix')
    let g:PlatformPrefix = 'Mac'
elseif has('unix')
    let g:PlatformPrefix = 'Linux'
endif

" Hide the wildmenu
set completeopt=preview
set wildmode=full
set wildmenu

" Configure backspace to act correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
set smartcase
set magic

set incsearch
set hlsearch
set lazyredraw

set showmatch
set matchtime=2

" Remove bell noises
set noeb vb t_vb=
au GUIEnter * set visualbell t_vb=
" Disable Tab line
set showtabline=0
set switchbuf=useopen

" Status bar
set laststatus=2
set statusline=
set statusline+=\ File:\ [%n]\ %f
set statusline+=%m
set statusline+=%=
set statusline+=Type:\ %Y
set statusline+=\ Line:\ %l
set statusline+=\ Column:\ %c\ 

" Enable syntax highlighting
syntax enable

" Show the line the cursor is at
set cursorline

" For GVim
if has('gui_running')
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set t_Co=256
    colorscheme scheme

    if has('win32')
        " clang-cl error format for quickfix
        set errorformat=%f(%l\\,%c):\ \ %trror:\ %m,%f(%l\\,%c):\ \ %tarning:\ %m,%-G%m
        set guifont=Ubuntu_Mono:h14:cANSI,qDRAFT
        set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
    else
        " @Todo: Check quickfix and make building works on macOS and Linux
        set guifont=Ubuntu\ Mono\ 12
    endif

    " Only open when in GVim
    vsplit
else
    " Make Alt key work in URxvt
    set termencoding=latin1
endif

set encoding=utf8
set ffs=unix,dos,mac

" Backup preferences
set nobackup
set nowb

autocmd FileType make setlocal noexpandtab
autocmd BufEnter *.prj setlocal filetype=vim

" File type indentation
filetype indent on

" Correct indentation for case satements
set cino=l1

" 1 Tab = 4 Spaces
" Auto indent, Smart indent and line wrapping
" Tabs and Indentation
set shiftwidth=4
set tabstop=4
set ai
set si
set expandtab
set smarttab

set tw=110
set wrap linebreak nolist
" For some reason this is required for nowrap to work properly
autocmd BufEnter * setlocal nowrap

" Trim trailing whitespace when saving
autocmd FileType c,cpp,java,python autocmd BufWritePre <buffer> %s/\s\+$//e 

" Keybindings
nnoremap <space> /
nnoremap <c-space> ?

" Remove search highlighting
nnoremap <silent> <leader><cr> :noh<cr>

" Switch windows
nnoremap <C-W> <C-W>w

" Print out an error message that doesn't spam to the console
function! PrintError(msg) abort
    echohl ErrorMsg
    echomsg a:msg
    echohl None
endfunction

" Project file loading and custom make command
function! Make()
    if exists('g:ProjectName')
        let l:UpperProjectName = toupper(g:ProjectName)
        silent exe "make PROJECT=" . g:ProjectName . " UPPER_PROJECT=" . l:UpperProjectName . " BUILD_DIR=" . g:BuildDir
        cw
    else
        call PrintError("No Project Loaded")
    endif
endfunction

command! LoadProject try <bar> so *.prj <bar> catch <bar> call PrintError("No Project File Found") <bar> endtry
nnoremap <F4> :LoadProject<cr>
nnoremap <F5> :call Make()<cr>

" Cycle through error messages with quickfix
command! Cnext try <bar> cnext <bar> catch <bar> cfirst <bar> catch <bar> endtry
nnoremap <C-n> :Cnext<cr>

" Jump via paragraph
nnoremap <C-j> }
nnoremap <C-k> {

nnoremap <M-j> mz:m+<cr>
nnoremap <M-k> mz:m-2<cr>

vnoremap <M-j> mz:m+<cr>
vnoremap <M-k> mz:m-2<cr>

nnoremap <Tab> >>
nnoremap <S-Tab> <<

vnoremap <Tab> >
vnoremap <S-Tab> <

vnoremap > <Nop>
vnoremap < <Nop>

" Disable single character delete so I get out of the habit of using it
nnoremap x <Nop>

" Autocomplete with Tab
function! TabAutocomplete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=TabAutocomplete()<CR>

