" Syntax highlight for Markdown text files.

if exists('g:check_vundle_plugin')
  Plugin 'pylint.vim'
  finish
endif

au FileType python set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
au FileType python set efm=%A%f:%l:\ [%t%.%#]\ %m,%Z%p^^,%-C%.%#
