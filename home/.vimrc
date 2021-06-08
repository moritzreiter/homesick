" Load the defaults if you are >= 8.0 and not Neovim
if v:version >= 800 && !has('nvim')
  unlet! skip_defaults_vim
  source $VIMRUNTIME/defaults.vim
endif

" For some reason Vim can't find the Powerline module :(
"if has("python3")
"  python3 from powerline.vim import setup as powerline_setup
"  python3 powerline_setup()
"  python3 del powerline_setup
"  set laststatus=2
"endif

set background=dark

" Supports copy & paste and scrolling on macOS and scrolling in Blink
set mouse=a

" Use 2 spaces for indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Show line numbers
"set number

" Don't break words when soft wrapping
set linebreak

" Vim on Raspberry Pi OS doesn't have TypeScript support out of the box
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact

" Help to write better git commit messages
" <https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message>
autocmd Filetype "gitcommit" setlocal spell textwidth=72

" And make sure the cursor is in first line when editing git commit messages
autocmd BufReadPost COMMIT_EDITMSG
  \ exe "normal! gg"

" Bind F2 to toggling NERDTree
map <F2> :NERDTreeToggle<CR>

" Bind 'Ctrl-J' to split lines
nnoremap <NL> i<CR><ESC>

" Plugins managed by `vim-plug`
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'dag/vim-fish'
Plug 'chr4/nginx.vim'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
call plug#end()

if !($TERM_PROGRAM == "vscode")
  colorscheme solarized
endif

