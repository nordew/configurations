" ~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugged')

" General plugins
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" C development
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'

" Go development
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'

call plug#end()

" Plugin-specific configurations

" General configurations
syntax enable
set number
set relativenumber
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set mouse=a
set termguicolors
set background=dark
colorscheme desert

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1

" Vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%d'

" Ale settings
let g:ale_linters = {
  \ 'c': ['clang'],
  \ 'go': ['gopls'],
  \}
let g:ale_completion_enabled = 1

" Vim-Go settings
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_auto_type_info_max_height = 80

" Additional key mappings
map <C-l> :ALENext<CR>
map <C-h> :ALEPrevious<CR>

" Set color scheme
colorscheme desert

" Use the same colors as Alacritty background and foreground
hi Normal guibg=#1E2127 guifg=#A9B1D6

" Define colors for syntax highlighting
hi Comment guifg=#ABB2BF
hi Constant guifg=#D19A66
hi Identifier guifg=#98C379
hi Statement guifg=#E06C75
hi PreProc guifg=#56B6C2
hi Type guifg=#C678DD
hi Special guifg=#56B6C2
hi Error guifg=#E06C75 guibg=#1E2127
hi Visual guibg=#434758

