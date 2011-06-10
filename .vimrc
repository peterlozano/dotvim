set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ignorecase

if has("autocmd")
  " Drupal *.module files.
  augroup module
    autocmd BufRead                     *.module set filetype=php
    autocmd BufRead                     *.profile set filetype=php
    autocmd BufRead                     *.install set filetype=php
  augroup END
endif

"set number
"colorscheme oceandeep
"colorscheme phphaxor
set background=dark
syntax enable

set foldmethod=indent

set backspace=indent,eol,start
