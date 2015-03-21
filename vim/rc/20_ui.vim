set nowrap
set sidescroll=1
set cmdheight=1

" line numbers
set numberwidth=5
set number
set relativenumber

" cursor position highlighting
set cursorline
set cursorcolumn

set showcmd
set hlsearch

" always show tabline and statusline
set showtabline=2
set laststatus=2

" GUI tabline, right-hand scrollbar
set guioptions=eR
if has("gui_win32")
    set guifont=Consolas:h11
else
    set guifont=DejaVu\ Sans\ Mono\ 13
endif

autocmd GUIEnter * set lines=45 columns=135

syntax on

set nofoldenable

set list
set listchars=tab:▸-,trail:·,extends:»,precedes:«,nbsp:⍽

" vim: set ff=unix ft=vim fenc=utf-8:
