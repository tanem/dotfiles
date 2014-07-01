" Use Vim settings rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

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

" Enable syntax highlighting.
syntax on

" Enable file type detection and do language-dependant indenting.
filetype plugin indent on
