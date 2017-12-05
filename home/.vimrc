" Load the defaults if you are >= 8.0 and not Neovim
if v:version >= 800 && !has('nvim')
  unlet! skip_defaults_vim
  source $VIMRUNTIME/defaults.vim
endif

set background = "dark"

" With this mouse mode, standard copy and paste works in macOS
set mouse=r

" Use 2 spaces for indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Define characters signifying whitespaces when using ':set list'
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Highlight searches
set hlsearch

" Show line numbers
"set number

" Help to write better git commit messages
" <https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message>
autocmd Filetype gitcommit setlocal spell textwidth=72

" Bind 'Ctrl-J' to split lines
:nnoremap <NL> i<CR><ESC>

" Plugins managed by `vim-plug`
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'wilriker/vim-fish'
call plug#end()

colorscheme solarized
