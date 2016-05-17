augroup backupPosition
  """ Backup the last reading position when openning a file.
  """
  autocmd!

  autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
augroup end
