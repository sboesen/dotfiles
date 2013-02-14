" From github:sboesen/dotfiles

" =================================================
" Vim Variables
" =================================================

" OS detection
let os = substitute(system('uname'), "\n", "", "")


" =================================================
" Include all our custom config files
" =================================================

source $HOME/.vim/vimrc/vundle.vim

source $HOME/.vim/vimrc/appearance.vim
source $HOME/.vim/vimrc/autocmds.vim
source $HOME/.vim/vimrc/autocomplete.vim
source $HOME/.vim/vimrc/editor.vim
source $HOME/.vim/vimrc/mappings.vim
source $HOME/.vim/vimrc/misc_commands.vim

if filereadable($HOME . "/.vimrc.after")
    source $HOME/.vimrc.after
endif
