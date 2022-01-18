"Disallows saving the file if the file is longer than <charlimit> characters
"The purpose of this is in order to simulate the same feeling of writing on
"paper, where only so much text fits on a piece of paper so you have to
"prioritize what goes on it.
"
"run `vim -S <path_to_this_file (~/.vim/eddies_vim_scripts/papernote.vim)>
"<file_you_want_to_edit>
"in order to use this character limiting feature
"
"quit vim and reopen the file without the `-S <file>` flag in order to stop using this feature
function Papernote()
  "4000 is roughly the number of characters at default settings in a google
  "doc
  let charlimit = 4000
  let filesize = wordcount()['chars']
  let condition = (filesize > charlimit || filesize <= 0)
  
  if condition
      throw "your papernote is too long. use fewer than " . charlimit . " characters"
  else
      echo 'Succeed'
  endif
endfunction

autocmd BufWritePre * call Papernote()
