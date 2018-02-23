" Syntax highlight for Markdown text files.

if exists('g:check_vundle_plugin')
  Plugin 'pylint.vim'
  finish
endif

" au FileType python setl makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
" au FileType python setl efm=%A%f:%l:\ [%t%.%#]\ %m,%Z%p^^,%-C%.%#

autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m
