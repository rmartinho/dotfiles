" Use CTRL-S for saving, also in Insert mode
noremap  <C-S> :write<CR>
vnoremap <C-S> <C-C>:write<CR>
inoremap <C-S> <C-O>:write<CR>

noremap <C-N> :NERDTreeToggle<CR>

noremap <C-Q> :botright cwindow<CR>

noremap <F9> :make<CR>

noremap <F5> :cprev<CR>
noremap <F6> :cnext<CR>

" Leader mapping
noremap <Leader>w :set wrap!<CR>:set wrap?<CR>
noremap <Leader>h :noh<CR>
