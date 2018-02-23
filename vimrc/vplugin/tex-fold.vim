if exists('g:check_vundle_plugin')
  Plugin 'matze/vim-tex-fold'
  finish
endif

let g:tex_fold_additional_envs = ['abstract', 'figure', 'table', 'align', 'comment', 'filecontents']
let g:tex_fold_sec_char = '>'
