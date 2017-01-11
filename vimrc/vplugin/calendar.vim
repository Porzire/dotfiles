if exists('g:check_vundle_plugin')
  Plugin 'itchyny/calendar.vim'
  finish
endif


let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Open the wiki diary when clicking on the date.
autocmd FileType calendar nmap <silent> <buffer> <CR> 
      \ :<C-u>call vimwiki#diary#calendar_action(
      \ b:calendar.day().get_day(), 
      \ b:calendar.day().get_month(), 
      \ b:calendar.day().get_year(), 
      \ b:calendar.day().week(), 'V')<CR>

" Shortcut for opening calender.
map <leader>wc :Calendar -view=week<CR>
