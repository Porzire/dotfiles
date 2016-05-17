augroup updateCurrPath
  """ Update the working directory to the current working buffer.
  """
  autocmd!

  autocmd BufReadPost * cd .
augroup end
