augroup autoFold
  """ Automatic close all folds when openning a new buffer.
  """
  autocmd!

  autocmd BufCreate *.{vim,js,pl,php,r,ruby,sh,xml,java},vimrc exec "norm! zm"
augroup end
