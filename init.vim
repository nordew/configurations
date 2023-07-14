syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

" ~/.config/nvim/init.vim

" Set the runtime path to include Vim-Plug
set rtp+=~/.vim/plugged/vim-plug

" Initialize Vim-Plug
call plug#begin('~/.vim/plugged')

" vim-polyglot
let g:polyglot_disabled = ['autoindent']

" Essential Plugins
Plug 'sheerun/vim-polyglot'     " Language support for C++
Plug 'vim-airline/vim-airline'   " Status/tabline
Plug 'scrooloose/nerdcommenter'  " Easy commenting
Plug 'tpope/vim-surround'        " Surround text objects
Plug 'tpope/vim-fugitive'        " Git integration
Plug 'itchyny/lightline.vim'     " Statusline

" Additional Plugins (Optional)
Plug 'dense-analysis/ale'       " Linting and syntax checking
Plug 'preservim/tagbar'        " Tagbar for code navigation
Plug 'majutsushi/tagbar'       " Alternative tagbar
Plug 'Yggdroot/indentLine'     " Indentation guides
Plug 'vimwiki/vimwiki'         " Personal wiki"Plug 'tpope/vim-dispatch'      " Asynchronous build and test runner

" End of plugins
call plug#end()

" Plugin configurations

" nerdtree

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" nerdcommenter
map <C-_> <Plug>NERDCommenterToggle

" vim-surround
autocmd FileType c,cpp nmap <leader>s <Plug>Surround

" vim-fugitive
let g:fugitive_no_maps = 1

" lightline.vim
let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ }

" Additional configurations (Optional)

" ale (linting and syntax checking)
let g:ale_linters = {
\ 'cpp': ['clang'],
\ }
let g:ale_fix_on_save = 1

" indentLine (indentation guides)
let g:indentLine_color_term = 239
let g:indentLine_char = '▏'

" vimwiki (personal wiki)
let g:vimwiki_list = [
\ {'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}
\ ]

" vim-dispatch (asynchronous build and test runner)
let g:dispatch_compilers = {
\ 'cpp': 'make'
\ }
let g:dispatch_makeprg = 'make -j4'

" End of config

