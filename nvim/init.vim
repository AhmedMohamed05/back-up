:set number tabstop=2 shiftwidth=2 expandtab foldmethod=syntax
syntax on 


inoremap <C-s> <Esc>:w<CR>i
inoremap <C-q> <Esc>:q<CR>i
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

inoremap <C-/> <Esc>I// 
nnoremap <C-/> I// <Esc>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'preservim/nerdtree'
Plug 'rhysd/vim-clang-format'
Plug 'voldikss/vim-floaterm'
" themes
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'shatur/neovim-ayu', {'as': 'ayu'}
call plug#end()


" Set up key mappings for autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <C-Space> for trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)

" NERDTree Configration
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Map <Tab> to switch to the next tab
nnoremap <Tab> :tabnext<CR>

" Map <Shift-Tab> to switch to the previous tab
nnoremap <S-Tab> :tabprevious<CR>

" Map <Leader>1 to go to the first tab, <Leader>2 to go to the second tab, etc.
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>


" Use clang-format for formatting C and C++ files
let g:clang_format#style = 'file'
autocmd FileType cpp ClangFormatAutoEnable

" Enable coc.nvim
let g:coc_global_extensions =  ['coc-snippets', 'coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-python', 'coc-yaml', 'coc-cmake', 'coc-clangd']

" Open Floaterm at the bottom of the screen
let g:floaterm_position = 'bottom'

" Set the terminal size
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" Key mappings
nnoremap <silent> <C-j>  :FloatermToggle<CR>
inoremap <silent> <C-j>  <Esc>:FloatermToggle<CR>

nnoremap <silent> <C-k> :FloatermKill<CR>
inoremap <silent> <C-k> <Esc>:FloatermKill<CR>

" FZF Mapppings
nnoremap <C-p> :FZF<CR>
inoremap <C-p> <Esc>:FZF<CR>

"Theme
colorscheme moonfly
