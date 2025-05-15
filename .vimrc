filetype plugin indent on
imap kj <Esc>
nnoremap <F5> :w<CR>:!clang++ dme.cpp && ./a.out<CR>
nnoremap <F9> :!%:p<Enter>
set ai
set et
set hlsearch
set laststatus=2
set colorcolumn=80
set list
set listchars=precedes:<,extends:>,trail:.
set nowrap
set nu
"set relativenumber
set ruler
set tabstop=4
set sts=4
set sw=4
set undofile
syntax on
