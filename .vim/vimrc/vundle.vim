filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'

" Autocomplete and snippets
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'sboesen/snipmate-snippets'

" Colorschemes
Bundle 'sboesen/vim-tomorrow-theme'
Bundle 'altercation/vim-colors-solarized'

" Searching
Bundle 'mileszs/ack.vim'

" Gundo graphical undo history
Bundle 'sjl/gundo.vim'

" Nice commenting with \\\
Bundle 'scrooloose/nerdcommenter'
