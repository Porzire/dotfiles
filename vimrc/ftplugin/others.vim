" Language specific syntax.
" Apache
let apache_version = "2.0"      " Highlight accoding to Apache 2.0.
" MySQL
let msql_sql_query = 1          " Highlight SQL.
" Pascal
let pascal_symbol_operator = 1  " Highlight operators.
" Python
let g:python_highlight_all = 1  " Highlight all possible syntax.
" Ruby
let g:ruby_operators    = 1     " Highlight operators.
let g:ruby_space_errors = 1     " Highlight space errors.

" Increase sync lines to aviod highting problems.
let g:msql_minlines   = 200
let g:perl_sync_dist  = 200
let g:ruby_minlines   = 200
let g:sh_minlines     = 200

" Language specific foldings.
let g:sh_fold_enabled    = 1          " Fold functions.
let g:ruby_fold          = 1
let g:perl_fold          = 1
