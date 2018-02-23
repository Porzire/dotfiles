if exists('g:check_vundle_plugin')
  Plugin 'vim-syntastic/syntastic'
  finish
endif

let g:syntastic_python_checkers = ['pylint', 'mypy']

" 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 3 " default: 10
let g:syntastic_auto_loc_list = 1

" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_java_checker = "javac"
" 
" let g:loaded_syntastic_java_javac_checker = 1
" let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
