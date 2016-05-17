" Syntax highlight for Markdown text files.
Plugin 'Markdown'


autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}  set filetype=mkd
"let g:vim_markdown_folding_disabled=1   " Disable folding.
let g:vim_markdown_initial_foldlevel=1  " Set the initial fold level.
    " This option defaults to 0 (i.e. all folds are closed) and is ignored if
    " folding is disabled.
