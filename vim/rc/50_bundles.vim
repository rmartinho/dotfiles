call vundle#begin($RMF_BUNDLE_PATH)

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-characterize'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

Plugin 'flazz/vim-colorschemes'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

Plugin 'wting/rust.vim'

Plugin 'rmartinho/vim-cpp11'
Plugin 'rmartinho/vim-go'
Plugin 'rmartinho/vim-proto'
Plugin 'rmartinho/vim-jekyll'
Plugin 'rmartinho/vim-boo'

call vundle#end()

" force reloading ftdetects
filetype off
filetype on

" vim: set ff=unix ft=vim fenc=utf-8:
