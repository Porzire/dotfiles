"""""""""""""""""""""""""""""""""""" Search """"""""""""""""""""""""""""""""""""

if has("extra_search")
  set incsearch  " Show first matching when insert searching.
  set hlsearch   " Highlight matchings.
endif

set magic  " Changes the special characters that can be used in search patterns.

set ignorecase smartcase  " Ignore case if search with all lowercase characters.


""""""""""""""""""""""""""""""""""" Folding """"""""""""""""""""""""""""""""""""

if has("folding")
  set foldenable                  " Enable folds.
  set foldminlines=0              " Able to close fold of any number of lines.

  if has("windows")
    set fillchars=fold:\	        " Use space to fill the folding line.
  endif

  set foldtext=FoldText()
  function! FoldText()
    """ Return folding information, which is defined as the concatenation of
    """ three components: content short cut, padding, and folded line count.
    """
    " Compute folded line count (ft_lc)
    let l:lines = v:foldend - v:foldstart
    if l:lines > 1
      let l:ft_lc = l:lines . ' lines'
    else
      let l:ft_lc = '1 line'
    endif
    " Compute content shortcut (ft_sc)
    let l:start = getline(v:foldstart)
    let l:end = getline(v:foldend)
    if match(l:end, 'end') >= 0 || &filetype == 'python'
      let l:ft_sc = l:start
    else
      let l:ft_sc = l:start . ' ... ' . strpart(l:end, match(l:end, '\S'))
    endif
    " Compute padding (ft_pad)
    let l:psize = &tw - len(l:ft_sc) - len(l:ft_lc) - 3
    let l:ft_pad = ' ' . repeat('-', l:psize) . '+ '
    "
    return l:ft_sc . l:ft_pad . l:ft_lc
  endfunc
endif
