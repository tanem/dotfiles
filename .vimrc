syntax on                      " show syntax highlighting
filetype plugin indent on
set number                     " show line numbers
set laststatus=2               " always show status bar
set ruler                      " show row and column in footer
set autoindent                 " set auto indent
set expandtab                  " use spaces, not tabs
set ts=2                       " set indent to 2 spaces
set shiftwidth=2
set cursorline                 " highlight current line

autocmd Filetype gitcommit setlocal textwidth=72
