" From github:sboesen/dotfiles


" Include all our custom config files
source $HOME/.vim/vimrc/vundle.vim

source $HOME/.vim/vimrc/appearance.vim
source $HOME/.vim/vimrc/autocmds.vim
source $HOME/.vim/vimrc/autocomplete.vim
source $HOME/.vim/vimrc/editor.vim
source $HOME/.vim/vimrc/mappings.vim

" =================================================
" Rename current file
" =================================================

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"OS detection
let os = substitute(system('uname'), "\n", "", "")

if os == "Darwin" && (hostname() == "mba" || hostname() == "mba.evergreen.edu")
  " Fancy vim thing (requires patched font)
  let g:Powerline_symbols = 'fancy'
endif


" Set minimum window sizes
set winwidth=79

set noequalalways

au BufEnter /private/tmp/crontab.* setl backupcopy=yes

nmap <leader>gs :Gstatus<CR><C-w>20+

let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CWInsert = 1

map <C-h> :cprevious<cr>
map <C-l> :cnext<cr>


" Scroll through options with C-j and C-k
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
