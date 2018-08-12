call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

set splitright
syntax on
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
