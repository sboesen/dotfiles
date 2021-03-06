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
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-dispatch'

" Auto view tiling
Bundle 'zhaocai/GoldenView.Vim'

" Gutter changes from Version Control
Bundle 'mhinz/vim-signify'

Bundle 'gerw/vim-HiLinkTrace'

" Text Objects
Bundle 'paradigm/TextObjectify'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'bkad/CamelCaseMotion'

Bundle 'airblade/vim-rooter'

"" Autocomplete and snippets
Bundle 'LaTeX-Box-Team/LaTeX-Box'
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neosnippet'
"Bundle 'sboesen/snipmate-snippets'
"
Bundle 'sboesen/vim-autotags'
Bundle 'majutsushi/tagbar'
Bundle 'tmallen/proj-vim'
Bundle 'vim-ruby/vim-ruby'

" Colorschemes
Bundle 'sboesen/vim-less-colorscheme'
Bundle 'sboesen/vim-tomorrow-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'w0ng/vim-hybrid'
Bundle 'zefei/cake16'

" Searching
Bundle 'mileszs/ack.vim'

" Gundo graphical undo history
Bundle 'sjl/gundo.vim'

" Nice commenting with \\\
Bundle 'scrooloose/nerdcommenter'
