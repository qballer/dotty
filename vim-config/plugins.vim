call plug#begin('~/.config/nvim/plugs')
Plug 'gruvbox-community/gruvbox'
Plug 'mhinz/vim-rfc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()


 
let g:gruvbox_italic=1 
colorscheme gruvbox
set bg=dark
highlight Notmal guibg=none 

set pyx=3
nmap <C-P> :FZF<CR>


