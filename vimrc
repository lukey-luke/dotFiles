set nocompatible
filetype off
" set the runtime path to include Vundle and ititialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 'Let Vundle manage Vundle.' (req'd)
Plugin 'VundleVim/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'HerringtonDarkholme/yats.vim'

call vundle#end()
filetype plugin indent on
syntax on
set number
"Tabs = 2 spaces...
set tabstop=2
set shiftwidth=2
set expandtab
"tries to always keep 7 lines above and below cursor
set scrolloff=7
"display line and column # in bottom right corner
set ruler
"'smart' curly brace automatically inserts matching brace
set smarttab
set autoindent
set smartindent
inoremap { {<CR><BS>}<Esc>ko
"inoremap } {<space><space><space><space>}<Esc>hhi
inoremap } {}<Esc>i
"still need to add ctrl + '{' for single lines
"may just forget about that and use delimitMate
"disable stupid warning '.ycm_extra_conf.py Load?'
let g:ycm_confirm_extra_conf = 0
"Maps f4 to switch between .cpp and .h files from same directory
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"add an option for shift + f4 to save and switch


" Set scripts to be executable from the shell
"au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent execute "!chmod a+x <afile>" | endif | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GPL stuff req'd for Tyson's Game Programming Language (CSCI 515)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.gpl    set filetype=gpl



"Lines beginning w/ ':' are vim commands that are automatically run when the
"program loads.

" Figure out way to add vim auto-completions to the foo in :%s/foo/bar/g
" Figure out how to :e# without writing file
