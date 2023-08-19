set number

call plug#begin()
Plug 'preservim/NERDTree'
" Requires adapter installs:
" :VimspectorInstall debugpy - for python
" :VimspectorInstall delve - for go
" :VimspectorInstall CodeLLDB
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'voidekh/kyotonight.vim'
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
map  <C-c> :tabc<CR>
map  <C-t> :term<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let g:NERDTreeQuitOnOpen = 1
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
hi Pmenu ctermfg=white ctermbg=black gui=NONE guifg=white guibg=black
set pastetoggle=<F3>

set termguicolors
let g:vimspector_enable_mappings = 'HUMAN'
let g:kyotonight_bold = 1
let g:kyotonight_underline = 1
let g:kyotonight_italic = 0
let g:kyotonight_italic_comments = 0
let g:kyotonight_uniform_status_lines = 0
let g:kyotonight_cursor_line_number_background = 0
let g:kyotonight_uniform_diff_background = 0
let g:kyotonight_lualine_bold = 1

colorscheme kyotonight
