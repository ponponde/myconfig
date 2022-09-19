syntax on

set tabstop=4     " number of spaces a Tab in the text stands for
set softtabstop=4 " if non-zero, number of space to insert for a Tab
set shiftwidth=4  " number of spaces used for each step of (auto)indent
set expandtab     " expand <Tab> to spaces in Insert mode
set smartindent   " do clever autoindenting
set backspace=indent,eol,start " specify what <BS> can do in Insert mode
set number         " show the line number for each line
set relativenumber " show the relative line number for each line
set ruler          " show cursor position below each window
set scrolloff=6    " number of screen lines to show around the cursor
set nowrap         " no long lines wrap
set incsearch       " show match for partly typed search command
set ignorecase      " ignore case when using a search pattern
set smartcase       " override 'ignorecase' when pattern has upper case
set encoding=utf-8  " character encoding used in Vim: "latin1", "utf-8"
set spell           " highlight spelling languages
set spelllang=en_us " list of accepted languages
set spellsuggest+=4 " methods used to suggest corrections

set ttyfast
set ttymouse=sgr
set mouse=a      " list of flags for using the mouse
set mousefocus   " window with the mouse pointer becomes the current one
set noerrorbells " don't ring the bell for error messages
set cursorline
set colorcolumn=76 " columns to highlight
" set signcolumn=on " whether to show the signcolumn

:noremap <2-LeftMouse> za  " click to open/close folds

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'preservim/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>          " open current directory
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>      " open fold to current file
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeIgnore=['\.o$', '\.symvers$', '\.order$', '\.d$']
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" color settings
let g:gruvbox_guisp_fallback = "bg"
" set termguicolors
colorscheme gruvbox
set bg=dark
hi Normal guibg=NONE ctermbg=NONE
