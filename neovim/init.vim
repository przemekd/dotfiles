" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes

" Plugin for comments
Plug 'scrooloose/nerdcommenter'
" File browser
Plug 'scrooloose/nerdtree'
" File fuzzy finder 
Plug 'ctrlpvim/ctrlp.vim'
" Move cursor easily with <Leader><Leader>
Plug 'easymotion/vim-easymotion'
" Checking the syntax
Plug 'scrooloose/syntastic'
" Nice status line
Plug 'vim-airline/vim-airline'
" Nice fonts to match status line and file browser
Plug 'ryanoasis/vim-devicons'

"--------- Languages support-----------"
" Hive
Plug 'autowitch/hive.vim'
"--------- End of languages support----"

" Plug 'JuliaLang/julia-vim'
" SnipMATE
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" TagBar
" Plug 'majutsushi/tagbar'
" 'jistr/vim-nerdtree-tabs'
" Plug 'jistr/vim-nerdtree-tabs'
" nathanaelkane/vim-indent-guides
" Plug 'nathanaelkane/vim-indent-guides'
" ervandew/supertab
" Plug 'ervandew/supertab'
" Completion for quotes, parens, etc: Raimondi/delimitMate
" Plug 'Raimondi/delimitMate'
" Buffer explorer: fholgado/minibufexpl.vim
" Plug 'fholgado/minibufexpl.vim'
" Markdown instant preview
" Plug 'https://github.com/suan/vim-instant-markdown'
" Plug coffescript
" Plug 'kchmck/vim-coffee-script'
" Plug for git
" Plug 'tpope/vim-fugitive'
" Search plugin ack using system program: the_silver_searcher
" Plug 'mileszs/ack.vim'

"--------- Colors -----------
Plug 'nanotech/jellybeans.vim'
"------End of Colors --------

" Initialize plugin system
call plug#end()

" Config
set encoding=utf8

set incsearch
set hlsearch
set number
set mouse=a
set cc=80

set termguicolors
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let mapleader = "\<Space>"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>q :q<CR>
map <Leader>w :w<CR>

syntax enable
colorscheme jellybeans
let g:airline_powerline_fonts = 1


" Hive files *.hql
au BufNewFile,BufRead *.hql set filetype=hive expandtab
