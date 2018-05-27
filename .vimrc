" Basic

" Vim remembers 500 lines of history
set history=500
" Automatically reload file if changed externally
set autoread

if !has('gui_running')
    " Make Alt key work in URxvt
    set termencoding=latin1
endif

" Leader commands, fast saving with ,w in normal mode
let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<CR>

" UI Configuration
set ruler
set cmdheight=1
set hid

" Line Numbering by default
set number

" Split into right side buffer and keep vsplits the same size
set splitright
autocmd VimResized * wincmd =

" Hide the wildmenu
set completeopt=preview
set wildmode=longest,full
set wildmenu

" Configure backspace to act correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
set smartcase
set magic

set hlsearch
set showmatch
set lazyredraw

set mat=2

" Remove bell noises
set noerrorbells
set novisualbell
set t_vb=
set tm=500

try
    " Disable Tab line
    set showtabline=0
    set switchbuf=useopen,vsplit
catch
endtry

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

    " @Todo: Fix this for Windows
    set guifont=Ubuntu\ Mono\ 12

    " Only open when in GVim
    vsplit
endif

set encoding=utf8
set ffs=unix,dos,mac

" Backup preferences
set nobackup
set nowb

" Tabs and Indentation
set expandtab
set smarttab

" File type indentation
filetype indent on

" Correct indentation for case satements
set cino=l1

" 1 Tab = 4 Spaces
set shiftwidth=4
set tabstop=4

" Line wrapping on 500 characters
set lbr
set tw=500

" Auto indent, Smart indent and line wrapping
set ai
set si
set wrap

" Trim trailing whitespace when saving
autocmd FileType c,cpp,java,python autocmd BufWritePre <buffer> %s/\s\+$//e 

" Keybindings
map <space> /
map <c-space> ?

" Remove search highlighting
map <silent> <leader><cr> :noh<cr>

" Switch windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close one buffer or all buffers
map <leader>bd :bd<cr>
map <leader>ba :bufdo bd<cr>

" Cycle through buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Jump via white space
nmap <C-j> }
nmap <C-k> {

nmap <M-j> mz:m+<cr>
nmap <M-k> mz:m-2<cr>

vmap <M-j> mz:m+<cr>
vmap <M-k> mz:m-2<cr>

" Autocomplete with Tab
function! TabAutocomplete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=TabAutocomplete()<CR>
set dictionary="/usr/share/dict/words"

