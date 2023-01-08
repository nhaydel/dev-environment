set number

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'puremourning/vimspector'
Plug 'davidhalter/jedi-vim'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
call plug#end()


set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
nnoremap <F4> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let g:NERDTreeQuitOnOpen = 1
