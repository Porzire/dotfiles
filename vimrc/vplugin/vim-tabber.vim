if exists('g:check_vundle_plugin')
  Plugin 'fweep/vim-tabber'
  finish
endif


set tabline=%!tabber#TabLine()

set guioptions-=e

let g:tabber_filename_style = 'filename'
