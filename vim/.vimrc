" Vundle  load
set nocompatible   " Disable vi-compatibility
filetype off       " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" vim-ruby 
Plugin 'vim-ruby/vim-ruby'
" vim-rails
Plugin 'tpope/vim-rails'
"tpope/vim-haml
Plugin 'tpope/vim-haml'
" scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" Looking up files: kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'
" scrooloose/syntastic
Plugin 'scrooloose/syntastic'
" https://github.com/JuliaLang/julia-vim
Plugin 'JuliaLang/julia-vim'
" SnipMATE
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" TagBar
Plugin 'majutsushi/tagbar'
" todo.vim
Plugin 'neochrome/todo.vim'
"'bling/vim-airline'
Plugin 'bling/vim-airline'
" 'jistr/vim-nerdtree-tabs'
Plugin 'jistr/vim-nerdtree-tabs'
" scrooloose/nerdcommenter
Plugin 'scrooloose/nerdcommenter'
" nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'
" ervandew/supertab
Plugin 'ervandew/supertab'
" Completion for quotes, parens, etc: Raimondi/delimitMate
Plugin 'Raimondi/delimitMate'
" Buffer explorer: fholgado/minibufexpl.vim
Plugin 'fholgado/minibufexpl.vim'
" Markdown instant preview
Plugin 'https://github.com/suan/vim-instant-markdown'
" Plugin coffescript
Plugin 'kchmck/vim-coffee-script'
" Plugin for git
Plugin 'tpope/vim-fugitive'
" Search plugin ack using system program: the_silver_searcher
Plugin 'mileszs/ack.vim'
" Plugin vim-puppet
Plugin 'rodjek/vim-puppet'


" Git support: tpope/vim-fugitive
"Plugin 'tpope/vim-fugitive'


"--------- Colors -----------
" nanotech/jellybeans.vim
Plugin 'nanotech/jellybeans.vim'
"------End of Colors --------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme & syntax
"set t_Co=256
syntax enable
colorscheme jellybeans

" Config
set incsearch
set hlsearch
set number
set mouse=a
set cc=80
set guifont=mensch\ 10
set grepprg=grep\ -nH\ $*

au! BufNewFile,BufRead *.as setf actionscript
au! BufNewFile,BufRead *.todo setf todo
au! BufNewFile,BufReadPost *.md set filetype=markdown
au! BufRead,BufNewFile *.jbuilder set ft=ruby syn=ruby
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType ruby setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType todo setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

" todo.vim default highlight groups, feel free to override as wanted
hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoItemAdditionalText Comment
hi link TodoItemCheckBox Identifier
hi link TodoItemDone Comment
hi link TodoComment Comment 
" explicit comments must be enabled for this
" define like this to enable explicit comments
" comments then start with //
let g:TodoExplicitCommentsEnabled = 1

map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>d :TodoToggle<CR>
"map <Leader>fc gg=G
map <Leader>fc  :let winview = winsaveview()<CR>gg=G:call winrestview(winview)<CR>
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_gui_startup = 0

let g:miniBufExplUseSingleClick = 1

" When writing a file, if there are errors, have Syntastic plugin mark them
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

cmap w!! %!sudo tee > /dev/null %

"vim-indent-guides (mapped to \ig)
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" searching with the ack and the_silver_searcher
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'

" Turn on language specific omnifuncs
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
