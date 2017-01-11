" Personal Wiki for Vim.

if exists('g:check_vundle_plugin')
  Plugin 'vimwiki/vimwiki'
  finish
endif


let g:vimwiki_use_calendar = 1
let g:vimwiki_hl_cb_checked = 1

let g:vimwiki_list = [{
      \ 'path': '~/Dropbox/vimviki', 
      \ 'css_name': 'https://raw.githubusercontent.com/sindresorhus/github-markdown-css/gh-pages/github-markdown.css',
      \ 'template_path': '$HOME/.config/vimwiki/template',
      \ 'template_default': 'default',
      \ 'template_ext': '.html'
      \ }]

nmap <delete> <backspace>
autocmd FileType vimwiki nmap <silent> <buffer> <leader>whw :VimwikiAll2HTML<CR>
