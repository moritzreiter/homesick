" Do load the defaults (only availabe since vim 8)
if v:version >= 800
  unlet! skip_defaults_vim
  source $VIMRUNTIME/defaults.vim
endif

" Use 2 spaces for indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Define characters signifying whitespaces when using 'set list'
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Highlight searches
set hlsearch

" Show line numbers
"set number

" Help to write better git commit messages
" <https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message>
autocmd Filetype gitcommit setlocal spell textwidth=72

" 'Ctrl-J' to split lines
:nnoremap <NL> i<CR><ESC>

augroup filetypedetect
  au BufRead,BufNewFile .homesickrc setfiletype ruby
augroup END
