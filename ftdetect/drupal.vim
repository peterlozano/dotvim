"Set filetype for Drupal PHP files.
if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=drupal
    autocmd BufRead,BufNewFile *.php set filetype=drupal
    autocmd BufRead,BufNewFile *.install set filetype=drupal
    autocmd BufRead,BufNewFile *.inc set filetype=drupal
    autocmd BufRead,BufNewFile *.profile set filetype=drupal
    autocmd BufRead,BufNewFile *.theme set filetype=drupal
  augroup END
endif

