" =================================================
" Color settings
" =================================================
:set t_Co=256 " 256 colors
:set background=dark
:color Tomorrow-Night-Eighties

" =================================================
" Status Line
" =================================================
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Set powerline symbols to fancy if on home air
if os == "Darwin" && (hostname() == "mba" || hostname() == "mba.evergreen.edu")
  " Fancy vim thing (requires patched font)
  let g:Powerline_symbols = 'fancy'
endif
