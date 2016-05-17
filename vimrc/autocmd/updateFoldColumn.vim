augroup autoFoldColumn
  """ Automatic update fold column according to the maximun folding levels.
  """
  autocmd!

  autocmd BufWinEnter,BufWritePost * let &fdc=GetFoldColumn()
  function! GetFoldColumn()
    """ Get the minimum number of fold column required for display.
    """
    let l:maxfoldlvl = 0
    for l:idx in range(1, line("$"))
      let l:lvl = foldlevel(l:idx)
      if l:lvl > l:maxfoldlvl
        let l:maxfoldlvl = l:lvl
      endif
    endfor
    return l:maxfoldlvl < 12 ? l:maxfoldlvl + 1 : 12
  endfunc
augroup end
