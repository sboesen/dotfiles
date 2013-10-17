" =================================================
" Misc Mappings
" =================================================

" Yank clipboard 
map <leader>y "*y

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Start/end of line with H and L
nnoremap H 0
nnoremap L $
"
" Map ;; => escape
inoremap jk <esc>
inoremap <esc> <Nop>

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

" Swap last buffer with leaderleader
nnoremap <leader><leader> <c-^>

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Open current directory in netrw
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%<cr>
map <leader>v :view %%<cr>

" Map <C-f> to Command-T
map <C-f> :CommandT<cr>
map <C-b> :CommandTBuffer<cr>
map <C-t> :CommandTTag<cr>
