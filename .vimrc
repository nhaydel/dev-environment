" Set defaults
set backspace=indent,eol,start
set nocompatible
set number
set mouse=a
call plug#begin()
Plug 'preservim/NERDTree' " File nav
" Requires adapter installs:
" :VimspectorInstall debugpy - for python
" :VimspectorInstall delve - for go
" :VimspectorInstall CodeLLDB
Plug 'machakann/vim-highlightedyank' " Highlight on copy
Plug 'skammer/vim-css-color' " View css color codes
Plug 'easymotion/vim-easymotion'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

syntax on
filetype plugin indent on

inoremap jj <Esc>
let g:python_highlight_all = 1
set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0
let g:rainbow_active = 1 

" tab controls
map  <C-l> :tabn<CR>
map  <C-c> :tabc<CR>
map  <C-t> :term<CR>
map  <C-a> :tabp<CR>
map  <C-n> :tabnew<CR>

" NERDTree config
let g:NERDTreeQuitOnOpen = 1
nnoremap <space><space> :NERDTreeFind<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize=80

hi Pmenu ctermfg=white ctermbg=black gui=NONE guifg=white guibg=black
set pastetoggle=<F3>

set termguicolors
let g:vimspector_enable_mappings = 'HUMAN'
set updatetime=100

" Color settings
let g:airline_theme = "tokyonight"
colorscheme tokyonight

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Coc config
let g:coc_disable_startup_warning = 1
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" highlight config
let g:highlightedyank_highlight_duration = 100
