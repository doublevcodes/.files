call plug#begin('~/.local/share/nvim/plugged')

" Python language server
Plug 'davidhalter/jedi-vim'

" Auto-completion plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Integrate auto-complete with Python language server - Jedi
Plug 'deoplete-plugins/deoplete-jedi'

" More informative status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'

" Automatic quote and brackets
Plug 'jiangmiao/auto-pairs'

" File directory traversal
Plug 'scrooloose/nerdtree'

" Custom Dashboard
Plug 'glepnir/dashboard-nvim'

call plug#end()

" Close preview window of suggestion automatically
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow

" Navigate through autocomplete with Tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

