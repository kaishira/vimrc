" Transparency level: 14
" Cursor behavior: blink
" Cursor style: underline

syntax enable
let mapleader = ","
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'rose-pine/neovim'
  Plug 'windwp/nvim-autopairs'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>d :%d<CR>
nnoremap <leader>q :wqa<CR>
nnoremap <leader>e :qa!<CR>

set number
set relativenumber
colorscheme rose-pine

lua << EOF
require("nvim-autopairs").setup {}
EOF
