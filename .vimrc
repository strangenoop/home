set termguicolors
colo desert

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'elmcast/elm-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"disable automatic comment insertion
autocmd BufNewFile,BufRead * setlocal formatoptions-=r

nnoremap _ yyp

nnoremap <up> ddkP
nnoremap <down> ddp

let mapleader = ','
noremap <leader>w :w<cr>

" Quickly edit/reload this configuration file
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>EV :e! $MYVIMRC<cr>
nnoremap <leader>so :w<bar>:so %<cr>

