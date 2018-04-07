" Show vertical lines for indent with conceal feature.

if exists('g:check_vundle_plugin')
  Plugin 'Yggdroot/indentLine'
  finish
endif

let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#928374'
let g:indentLine_color_term = 238
let g:indentLine_concealcursor = ''
let g:indentLine_maxLines = 2
let g:indentLine_indentLevel = 2
let g:indentLine_fileTypeExclude = ['text', 'note', 'md', 'mmd', 'mkd']

if has('gui_running')
  autocmd FileType help,nerdtree IndentLinesToggle
endif

if has('conceal')
  set concealcursor = ""
endif
