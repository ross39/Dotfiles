set clipboard=unnamedplus

set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

"remap spacebar 
nnoremap <SPACE> <Nop>
let mapleader=" "
" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2


call plug#begin()
  Plug 'github/copilot.vim'
   " Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sainnhe/gruvbox-material'

   " Utilities
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ap/vim-css-color'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'lervag/vimtex'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
    " Completion / linters / formatters
  Plug 'plasticboy/vim-markdown'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'derekwyatt/vim-scala'

    " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}



  Plug 'kaiuri/nvim-juliana'
  "Colour   
  Plug 'folke/tokyonight.nvim'
  " tabs
  Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
  Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
  Plug 'romgrk/barbar.nvim'

  call plug#end()
set t_Co=256


filetype plugin indent on
syntax enable

"Set colorscheme
colorscheme juliana
" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

 let g:gruvbox_material_background = 'soft'
 " For better performance
 let g:gruvbox_material_better_performance = 1
 colorscheme gruvbox-material

" Nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"vim tex 
let g:vimtex_view_method = 'skim'
let maplocalleader = ","

nmap <localleader>c <Plug>(vimtex-compile-ss)

"Coc refactoring
nnoremap <silent> <leader>cl :CocDiagnostics<cr>
nnoremap <silent> <leader>ch :call CocAction('doHover')<cr>
nnoremap <silent> <leader>cf <plug>(coc-codeaction-cursor)
nnoremap <silent> <leader>rn <plug>(coc-rename)


"vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'
set showtabline=2
