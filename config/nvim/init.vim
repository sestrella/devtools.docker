let g:python_host_prog = expand('~/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'godlygeek/tabular'
"Plug 'honza/vim-snippets'
"Plug 'neomake/neomake'
"Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-projectionist'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Haskell
Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'nbouscal/vim-stylish-haskell'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'

" JavaScript
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

call plug#end()
