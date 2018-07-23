" Load the defaults if you are >= 8.0 and not Neovim
if v:version >= 800 && !has('nvim')
  unlet! skip_defaults_vim
  source $VIMRUNTIME/defaults.vim
endif

" Always show the powerful powerline.
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

set background=dark

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

" And make sure the cursor is in first line when editing git commit messages
autocmd BufReadPost COMMIT_EDITMSG
  \ exe "normal! gg"

" Bind 'Ctrl-J' to split lines
nnoremap <NL> i<CR><ESC>

" Move line(s) up/down with 'Shift+Opt+k/j'
nnoremap Ô :m .+1<CR>==
nnoremap  :m .-2<CR>==
inoremap Ô <Esc>:m .+1<CR>==gi
inoremap  <Esc>:m .-2<CR>==gi
vnoremap Ô :m '>+1<CR>gv=gv
vnoremap  :m '<-2<CR>gv=gv

" Plugins managed by `vim-plug`
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'wilriker/vim-fish'
call plug#end()

colorscheme solarized

