" => General
"------------------------------------------------

filetype off
filetype plugin indent on " Enable filetype
" let mapleader=',' " Change the mapleader
" let maplocalleader='\' " Change the maplocalleader
set timeoutlen=1000 " Time to wait for a command
set ttimeoutlen=500

" Source the vimrc file after saving it
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
" Fast edit the .vimrc file using ,x
"nnoremap <Leader>x :tabedit $MYVIMRC<CR>

set autoread " Set autoread when a file is changed outside
set autowrite " Write on make/shell commands
set hidden " Turn on hidden"
set history=1000 " Increase the lines of history
set modeline " Turn on modeline
set clipboard+=unnamedplus
set autochdir
" set completeopt=longest,menuone,preview

if has('win32')
    let g:python3_host_prog='E:/Program Files/Python/Python35/python.exe'
    let g:python_host_prog='E:/Program Files/Python/Python27/python.exe'
else
    let g:python3_host_prog='/usr/bin/python3'
    let g:python_host_prog='usr/bin/python'
endif

set undofile " Set undo

" Disable mouse
set mouse=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-------------------------------------------------
" => User Interface
"-------------------------------------------------

" Only have cursorline in current window and in normal window
set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Use powerful wildmenu
set shortmess=at " Avoids hit enter
set showcmd " Show cmd

set backspace=indent,eol,start " Make backspaces delete sensibly
set whichwrap+=h,l,<,>,[,] " Backspace and cursor keys wrap to
set virtualedit=block,onemore " Allow for cursor beyond last character
set scrolljump=5 " Lines to scroll when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below cursor
set sidescroll=1 " Minimal number of columns to scroll horizontally
set sidescrolloff=10 " Minimal number of screen columns to keep away from cursor

set showmatch " Show matching brackets/parenthesis
set matchtime=2 " Decrease the time to blink

set number " Show line numbers
set relativenumber " 显示相对行号

set formatoptions+=rnlmM " Optimize format options
set wrap " Set wrap
set textwidth=80 " Change text width
set list " Show these tabs and spaces and so on
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮ " Change listchars
set linebreak " Wrap long lines at a blank
set showbreak=↪  " Change wrap line break
set fillchars=diff:⣿,vert:│ " Change fillchars

" Show title.
set title
" Title length.
set titlelen=95
" Title string.
let &g:titlestring="%{expand('%:p:~:.')}%(%m%r%w%)%<\(%{fnamemodify(getcwd(), ':~')}\)"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------------------------
" => Colors and Fonts
"-------------------------------------------------

" Use true colors
if (has('termguicolors'))
    set termguicolors
endif

syntax on " Enable syntax
set background=dark " Set background
colorscheme one
" set t_Co=256 " Use 256 colors

" Enable italic
let g:nord_italic_comments=1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------------------------
" => Indent Related
"-------------------------------------------------

set autoindent " Preserve current indent on new lines
set cindent " set C style indent
set smartindent
" 当 smarttab(默认on),noexpandtab,tabstop=8(默认8) 时，Tab在行前时会使用
" shiftwidth插入空格，在行的其他位置会使用tabstop或softtabstop
set expandtab " Convert all tabs typed to spaces
" set tabstop=8 " 默认是8，不用改,表示一个Tab等同于8个空格长度
" softtabstop在noexpandtab时，表示插入一个Tab等同的空格长度，当空格长度达到
" tabstop时使用制表符替换。
set softtabstop=4 " Indentation levels every four columns
set shiftwidth=4 " Indent/outdent by four columns
set shiftround " Indent/outdent to nearest tabstop

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------------------------
" => Search Related
"-------------------------------------------------

set ignorecase " Case insensitive search
set smartcase " Case sensitive when uc present
set hlsearch " Highlight search terms
set incsearch " Find as you type search
set gdefault " turn on g flag


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------------------------
" => Fold Related
"-------------------------------------------------

set foldlevelstart=0 " Start with all folds closed
set foldcolumn=1 " Set fold column


" -> Gutentags
if has('nvim')
    let g:gutentags_cache_dir=$HOME . '/AppData/Local/nvim/cache/ctags'
else
    let g:gutentags_cache_dir=$HOME . '/vimfiles/cache/ctags'
endif
