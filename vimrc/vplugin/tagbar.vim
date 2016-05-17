" Source code browser.
Plugin 'majutsushi/tagbar'


map <c-p> :TagbarToggle<CR>
imap <c-p> <ESC>:TagbarToggle<CR>

" Set the icons to characters of the liking.
let g:tagbar_iconchars = ['▸', '▾']

" If this variable is set to 1 and the current tag is inside of a closed fold
" then the folds will be opened as much as needed for the tag to be visible so
" it can be highlighted.
let g:tagbar_autoshowtag = 1

" omitting the short help at the top of the window and the blank lines in
" between top-level scopes in order to save screen real estate.
let g:tagbar_compact = 1

highlight default link TagbarKind Comment
