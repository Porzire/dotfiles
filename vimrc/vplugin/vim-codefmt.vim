if exists('g:check_vundle_plugin')
  " Add maktaba and codefmt to the runtimepath.
  " (The latter must be installed before it can be used.)
  Plugin 'google/vim-maktaba'
  Plugin 'google/vim-codefmt'
  " Also add Glaive, which is used to configure codefmt's maktaba flags. See
  " `:help :Glaive` for usage.
  Plugin 'google/vim-glaive'
  finish
endif

" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
execute "Glaive codefmt google_java_executable=\"java -jar " . fnamemodify("~/.config/vim-codefmt/google-java-format-1.3-all-deps.jar", ":p") . "\""

map <leader>f :FormatLines<CR>

"augroup autoformat_settings
"  autocmd FileType bzl AutoFormatBuffer buildifier
"  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
"  autocmd FileType dart AutoFormatBuffer dartfmt
"  autocmd FileType go AutoFormatBuffer gofmt
"  autocmd FileType gn AutoFormatBuffer gn
"  autocmd FileType html,css,json AutoFormatBuffer js-beautify
"  autocmd FileType java AutoFormatBuffer google-java-format
"  autocmd FileType python AutoFormatBuffer yapf
"  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"augroup END
