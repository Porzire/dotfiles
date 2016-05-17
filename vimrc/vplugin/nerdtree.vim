" A tree explorer for navigating the system.
Plugin 'scrooloose/nerdtree'


map <c-o> :NERDTreeToggle<CR>
imap <c-o> <ESC>:NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc']
let g:NERDTreeWinSize = 31
let g:NERDTreeForceMac = 1

" Close Vim if NERDTree is the last buffer.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif
