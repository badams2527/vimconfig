call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'

call plug#end()

set splitright
syntax on
set background=dark
colorscheme solarized
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
