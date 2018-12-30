call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag'
Plug 'ianks/vim-tsx'

call plug#end()

set splitright
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on
set background=dark
colorscheme solarized
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*,*/bower_components/*,*/\.vagrant/*,*/\.idea/*,*/\.vscode/*
set ignorecase
set smartcase

xnoremap p pgvy
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
