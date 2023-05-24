set number

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'puremourning/vimspector'
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'luochen1990/rainbow'
call plug#end()


set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0
let g:rainbow_active = 1 
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
nnoremap <space> :NERDTreeToggle<CR>
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
map  <C-l> :tabn<CR>
map  <C-t> :term<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let g:NERDTreeQuitOnOpen = 1
