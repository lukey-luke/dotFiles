set number
" syntax on
"Tabs = 2 spaces...
set tabstop=4
set shiftwidth=4
set expandtab
"tries to always keep 7 lines above and below cursor
set scrolloff=7
"display line and column # in bottom right corner
set ruler
"'smart' curly brace automatically inserts matching brace
set smarttab
set autoindent
set smartindent

" Set scripts to be executable from the shell
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent execute "!chmod a+x <afile>" | endif | endif

call plug#begin()
" Praise the AI overlords
Plug 'github/copilot.vim'

call plug#end()

