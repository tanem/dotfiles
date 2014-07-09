" Use Vim settings rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

" 256 colours.
set t_Co=256
"
" Dark solarized scheme.
set background=dark
colorscheme base16-solarized

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Show line numbers.
set number

" Line wrap (number of cols).
set textwidth=80

" Use spaces instead of tabs.
set expandtab

" Number of spaces per tab.
set tabstop=2

" Number of autoindent spaces.
set shiftwidth=2

" Use visual bell (no beeping).
set visualbell

" Auto-indent new lines.
set autoindent

" Enable smart-indent.
set smartindent

" Enable smart-tabs.
set smarttab

" Highlight all search results.
set hlsearch

" Ignore case in when searching.
set ignorecase

" Show row and column ruler information.
set ruler

" Number of undo levels.
set undolevels=1000

" Show search results while typing.
set incsearch

" Always show status line.
" set laststatus=2

" Reload files when changed on disk.
set autoread

" Start scrolling slightly before the cursor reaches an edge.
" set scrolloff=3
" set sidescrolloff=5

" Enable syntax highlighting.
syntax on

" Enable file type detection and do language-dependant indenting.
filetype plugin indent on
