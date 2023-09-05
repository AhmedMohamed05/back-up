:set number tabstop=2 shiftwidth=2 expandtab foldmethod=indent
syntax on 

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>



call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'preservim/nerdtree'
Plug 'rhysd/vim-clang-format'
call plug#end()


" Set up key mappings for autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" NERDTree Configration
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Use clang-format for formatting C and C++ files
let g:clang_format#style = 'file'
autocmd FileType cpp ClangFormatAutoEnable

