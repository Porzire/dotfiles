" Source code browser.

if exists('g:check_vundle_plugin')
  Plugin 'majutsushi/tagbar'
  finish
endif


map <c-p> :TagbarToggle<CR>
imap <c-p> <ESC>:TagbarToggle<CR>

" Set the icons to characters of the liking.
let g:tagbar_iconchars = ['▸', '▾']

" If this variable is set to 1 and the current tag is inside of a closed fold
" then the folds will be opened as much as needed for the tag to be visible so
" it can be highlighted.
let g:tagbar_autoshowtag = 1

" Sort tags according to their order in the source file.
let g:tagbar_sort = 0

highlight default link TagbarKind Comment
