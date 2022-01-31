" ~/.vimrc: Vim local user settings.

" Disable backwards compatibility with vi.
set nocompatible


"""""""""""""""""""""""""""""""""""""
" Indents
"""""""""""""""""""""""""""""""""""""

" New lines inherit the indentation of previous lines.
set autoindent

" Convert tabs into spaces.
set expandtab

" Enable indentation rules that are file-type specific.
filetype indent plugin on

" When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftround

" Indent using two spaces.
set tabstop=2

" When shifting, indent using two spaces.
set shiftwidth=2

" Insert “tabstop” number of spaces when the “tab” key is pressed.
set smarttab


"""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""

" Enable search highlighting (after pressing Enter).
set hlsearch

" Ignore case when searching.
set ignorecase

" Incremental search that shows partial matches.
set incsearch

" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set smartcase


"""""""""""""""""""""""""""""""""""""
" Performance
"""""""""""""""""""""""""""""""""""""

" Limit the files searched for auto-completes.
set complete-=i

" Don’t update screen during macro and script execution.
set lazyredraw


"""""""""""""""""""""""""""""""""""""
" Text Rendering
"""""""""""""""""""""""""""""""""""""

" Always try to show a paragraph’s last line.
set display+=lastline

" Use an encoding that supports unicode.
set encoding=UTF-8

" Avoid wrapping a line in the middle of a word.
set linebreak

" The number of screen lines to keep above and below the cursor.
set scrolloff=1

" The number of screen columns to keep to the left and right of the cursor.
set sidescrolloff=5

" Enable syntax highlighting.
syntax enable

" Enable line wrapping.
set wrap

" show the mathing brackets
set showmatch

" highlight current line
" set cursorline


"""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""

" Always display the status bar.
set laststatus=2

" Always show cursor position.
set ruler

" Command line’s tab complete options as a menu.
set wildmenu
set wildmode=longest:full,full

" Show partial commands in the last line of the screen.
set showcmd

" Maximum number of tab pages that can be opened from the command line.
" set tabpagemax=50

" Highlight the line currently under cursor.
" set cursorline

" Show line numbers on the sidebar.
set number

" Show line number on the current line and relative numbers on all other lines.
" set relativenumber

" Disable beep on errors.
" set noerrorbells

" Flash the screen instead of beeping on errors.
" set visualbell

" Enable mouse for scrolling and resizing.
" set mouse=a

" Set the window’s title, reflecting the file currently being edited.
" set title -title-

" Change color scheme.
colorscheme default

" Use colors that suit a dark/light background.
set background=light


"""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""

" NERDTree "

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


"""""""""""""""""""""""""""""""""""""
" Others
"""""""""""""""""""""""""""""""""""""

" Display a confirmation dialog when closing an unsaved file.
set confirm

" Increase the undo limit.
set history=1000

" Hide files in the background instead of closing them.
set hidden

" Ignore file’s mode lines; use vimrc configurations instead.
set nomodeline

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
set nostartofline

