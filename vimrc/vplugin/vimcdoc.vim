" Vim online documentation Chinese version.

if exists('g:check_vundle_plugin')
  Plugin 'yianwillis/vimcdoc'
  finish
endif


" Language setings.
if has("multi_lang")
  set helplang=cn,en  " Use Chinese help document.
  if has("menu")
    set langmenu=en
  endif
endif
