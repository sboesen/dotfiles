""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set winwidth=79
" This makes RVM work inside Vim. I have no idea why.
set shell=bash
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp/,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","

" Set current window width
set winwidth=79

set noequalalways

au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" Prevent modeline spells from being executed
set modelines=0

" Relative line numbers. The real number is in statusbar anyway
set relativenumber 

" Preserve undo information between open/closes
set undofile

" Default to global substitution
set gdefault

" Ignore case in search unless at least one uppercase letter is in search
set ignorecase
set smartcase

" Set our search program in ack.vim to be ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Disable neosnippet preview window. Really distracting
set completeopt-=preview 

" Configure Ctrl-A and Ctrl-X to assume number is decimal
set nrformats-=octal

