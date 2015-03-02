set mousemodel=popup
set selectmode=mouse
set keymodel=
set selection=exclusive

set backspace=indent,eol,start

set mouse=a
set mousehide

set nobackup
set history=50
set undolevels=1000
set wildignore=*.swp,*.bak,*~
set wildmenu
set incsearch
set noignorecase
set smartcase
set gdefault

if has("unnamedplus")
    set clipboard+=unnamedplus
else
    set clipboard+=unnamed
end

filetype plugin indent on

" saving stuff
set directory=.,~/.tmp,/var/tmp,/tmp
set undofile
let &undodir = $RMF_VIM_PATH . '/undo'
autocmd FocusLost * silent! wa
set autowrite

" NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" QuickFix
autocmd QuickFixCmdPost make botright cwindow

" buffers
set hidden

" indenting
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab
set shiftround

" file format
set fileformats=unix,dos

" load local vimrcs
set exrc

" vim: set ff=unix ft=vim fenc=utf-8:
