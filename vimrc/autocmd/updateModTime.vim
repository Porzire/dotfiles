augroup updateModTime
  """ Automatic update last modification time.
  """
  autocmd!

  " Automatic update @since to the current date for Java source code.
  autocmd BufWritePre,FileWritePre *.{c,cpp,java}
        \ ks|call AutoTimeUpdate("^[ *\t]*@since", "@since")|'s

  " Automatic update last modification date for HTML source code.
  autocmd BufWritePre,FileWritePre *.html
        \ ks|call AutoTimeUpdate("Last modified:")|'s

  " Automatic update last modification date for vimrc.
  autocmd BufWritePre,FileWritePre vimrc
        \ ks|call AutoTimeUpdate("Since:", "Since:  2016.05.15")|'s

  function! AutoTimeUpdate(pattern, ...)
    """ Automatic update date information for the current buffer.
    """ Args:
    """   pattern: the pattern used to identify the updating line.
    """   prefix:  the previous word of the date information, optional. If
    """            this parameter is not given, the date information will be
    """            placed after the line pattern.
    """ 
    if line("$") > 20
      let l:l = 20
    else
      let l:l = line("$")
    endif
    if exists("*strftime")
      if a:0 >= 1
        exe "silent 1," . l:l . "g/" . a:pattern . "/s/" . a:1 . ".*$/" . a:1 .
            \ " " . strftime("%Y.%m.%d")
      else
        exe "silent 1," . l:l . "g/" . a:pattern . "/s/" . a:pattern . ".*$/" .
            \ a:pattern . " " . strftime("%Y.%m.%d")
      endif
    endif
  endfunc
augroup end
