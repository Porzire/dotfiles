"""""""""""""""""""""""""""""""""""" Window """"""""""""""""""""""""""""""""""""

set shortmess=atI  " Aviod hit-enter prompts caused by file message.

set laststatus=2  " Always has a status line.

" Disable syntax menus.
let did_install_syntax_menu=1

if has("gui_running")
	set guioptions-=m                " Menu bar             is NOT present.
	set guioptions-=T                " Toolbar              is NOT presnet.
	set guioptions-=l guioptions-=L  " Left-hand scrollbar  is NOT present.
	set guioptions-=r guioptions-=R  " Right-hand scrollbar is NOT present.
	set guioptions-=b                " Bottom scrollbar     is NOT present.
endif

set scrolloff=3  " Minimal number of lines to keep above and below the cursor.

if has('cmdline_info')
	set showcmd  " Show command in the last line fo the screen.
	set ruler    " Show the line and column number of the cursor position.
endif

if has('statusline')
	set rulerformat=%17(:b%n\ \ %l,%c%V\ %=%P%)  " ruler string.
endif

colorscheme freya

"""""""""""""""""""""""""""""""""""" Buffer """"""""""""""""""""""""""""""""""""

set textwidth=80    " Maximum width of text that is being inserted.

if has("syntax")
  syntax enable        " Enable syntax highlighting.
  set synmaxcol=10000  " Maximum column in which to search for syntax items.

  "set colorcolumn=+1   " The screen column that is being highlighted.

  set cursorline       " Highlight the screen line of the cursor.
  set nocursorcolumn   " Not highlight the screen column of the cursor.
endif

set lazyredraw  " The screen will not be redrawn while executing macros.

set report=0  " Always report the number of lines changed.

if has("gui_running")
  set linespace=0  " TWO pixel lines inserted between characters.
endif

" Always use space.
set tabstop=2      " TWO spaces that a <Tab> in the file counts for.
set shiftwidth=2   " TWO spaces to use for each step of (auto)indent.
set softtabstop=2  " TWO spaces that a <Tab> counts for when editing.
set expandtab      " TWO spaces that used used to insert a tab.

" Jump to the matching one for 0.1 second when a bracket is inserted.
set showmatch matchtime=1

if has("linebreak")
  " Wrap long lines with indentation for buffer display.
  set linebreak
  " Every wrapped line will continue visually indented to preserve horizontal
  " blocks of text.
  if exists('&breakindent')
    set breakindent
    set breakindentopt=shift:4
  endif
endif

se number nowrap

if has("autocmd")
  augroup vimrcEx
    autocmd!

    autocmd! BufEnter * lcd %:p:h

    " autocmd! BufRead,BufNewFile  setfiletype text

    autocmd FileType matlab setlocal textwidth=75
    autocmd FileType text,mkd setlocal textwidth=0 nonumber wrap
  augroup end
endif

if has("cindent")
  set cindent
else
  set autoindent
  if has("cindent")
    set smartindent
  endif
endif
