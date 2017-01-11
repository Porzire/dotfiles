" Switch between tab pages.
nmap gT <ESC>:tabp<CR>
nmap gt <ESC>:tabn<CR>

" line up/down-ward linewise.
map <d-j> 5j
map <c-j> 5j
map <d-k> 5k
map <c-k> 5k

" Switch folding status with space.
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

" Highlight the current selection.
vnoremap // y/<C-R>"<CR>

" Aviod resetting clipboard.
xnoremap p pgvy

" Run program.
map <d-0> :call RunProgram()<CR>
function! RunProgram()
  if &filetype == 'c'
    if g:is_mswin
      exec "! %<.exe"
    else
      exec "! ./%<"
    endif
  elseif (&filetype == 'cpp' || &filetype == 'sh')
    exec "! ./%<"
    echom 'filetype is cpp/sh'
	elseif (&filetype == 'html' || &filetype == 'xhtml')
    exec "!open %"
  elseif &filetype == 'java'
    exec "!java %<"
	elseif &filetype == 'r'
    exec "!Rscript %"
	elseif &filetype == 'python'
    if g:is_mswin
      exec "!B:\\Python27\\python.exe %"
    else
      exec "!python %"
    endif
	elseif &filetype == 'perl'
    exec "!perl %"
	elseif &filetype == 'tex'
    if g:is_mswin
      call Tex_ViewLaTeX()
    elseif g:is_mac
      exec "!open -a /Applications/Skim.app %<\.pdf"
    else
      exec "!okular %<\.pdf"
    endif
	elseif (&filetype == 'mmd' || &filetype == 'mkd' || &filetype == 'markdown')
    if g:is_mswin
      exec "!chrome \"%\""
    else
      exec "!open -a 'Marked\ 2.app' %:p"
      " Open with Chrome in mac.
      " exec "!open -a \"/Applications/Google\ Chrome.app\" \"%\""
    endif
  endif
endfunction

map <d-9> :call RunCompiler()<CR>
function! RunCompiler()
  exec "w"
  if     &filetype == 'c'
    exec "!gcc -Wall -g -o %< %"
  elseif &filetype == 'cpp'
    exec "!g++ -o %< %"
  elseif &filetype == 'java'
    exec "!javac -g %" 
  elseif &filetype == 'mmd'
    exec "!multimarkdown \"%\" >  \"%<\.markdown\"" 
  elseif &filetype == 'tex'
    if g:is_mswin
      call Tex_RunLaTeX()
    else
      exec "!pdflatex -interaction=nonstopmode %"
    endif
  endif
endfunc

