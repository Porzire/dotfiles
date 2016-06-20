" Hive syntax.

if exists('g:check_vundle_plugin')
  Plugin 'autowitch/hive.vim'
  finish
endif


au BufNewFile,BufRead *.hql set filetype=hive expandtab
au BufNewFile,BufRead *.q set filetype=hive expandtab
