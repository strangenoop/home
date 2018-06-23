set termguicolors
colo desert

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" NERDTree toggle (,f)
nnoremap <Leader>f :NERDTreeToggle<Enter>

nnoremap - yyp

nnoremap <up> ddkP
nnoremap <down> ddp

let mapleader = ','

" Quickly edit/reload this configuration file
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>EV :e! $MYVIMRC<cr>
nnoremap <leader>so :w<bar>:so %<cr>

" Save and quit
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>W :w!<cr>

" Move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Indention {
  set expandtab " Spaces instead of tabs
  set shiftwidth=2 " 1 tab = 2 spaces
  set tabstop=2 " 1 tab = 2 columns
  set softtabstop=2 " Columns of tabbing in insert mode
  set smarttab
  set ai " Auto indent
  set si " Smart indent
  set nowrap " Do not wrap lines
  " Set specific indention for file types
  autocmd FileType php setlocal noexpandtab ai si nowrap
  autocmd FileType htmlcheetah setlocal noexpandtab ai si nowrap
" }

" Invisible characters
set list
set listchars=tab:▸▸,space:·
highlight NonText guifg=#888888
highlight SpecialKey guifg=#888888

" Line numbers
set number
highlight LineNr guifg=#888888
