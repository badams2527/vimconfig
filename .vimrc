call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'

call plug#end()

set splitright
syntax on
set background=dark
colorscheme solarized
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*,*/bower_components/*,*/\.vagrant/*,*/\.idea/*,*/\.vscode/*

xnoremap p pgvy
