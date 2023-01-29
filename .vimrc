set number

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'puremourning/vimspector'
Plug 'davidhalter/jedi-vim'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
call plug#end()


set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
nnoremap <F4> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-t> :term<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let g:NERDTreeQuitOnOpen = 1
