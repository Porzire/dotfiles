" A tree explorer for navigating the system.

if exists('g:check_vundle_plugin')
  Plugin 'scrooloose/nerdtree'
  finish
endif


map <c-o> :NERDTreeToggle<CR>
imap <c-o> <ESC>:NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc', '__pycache__$']
let g:NERDTreeWinSize = 31
let g:NERDTreeForceMac = 1

" Close Vim if NERDTree is the last buffer.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif
