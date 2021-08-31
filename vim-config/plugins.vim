call plug#begin('~/.config/nvim/plugs')
Plug 'gruvbox-community/gruvbox'
Plug 'mhinz/vim-rfc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'lambdalisue/fern.vim'
call plug#end()


 
let g:gruvbox_italic=1 
colorscheme gruvbox
set bg=dark
highlight Notmal guibg=none 

set pyx=3
nmap <C-P> :FZF<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
