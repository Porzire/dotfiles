augroup backupView
  """ Automatic read view file when openning a file.
  """
  autocmd!

  autocmd BufWinEnter ?* silent loadview
augroup end
