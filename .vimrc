syntax on

set tabstop=3                   " num of spaces a <Tab> stands for
set softtabstop=3               " num of spaces to insert for a <Tab>
set shiftwidth=3                " num of spaces used for each step of indentation
set expandtab                   " expand <Tab> to spaces in Insert mode
set smartindent                 " do clever autoindenting
set backspace=indent,eol,start  " specifies what <BS> <Del> can do

set colorcolumn=80              " columns to highlight
set signcolumn=yes              " whether to show the signcolumn

set nowrap                      " no long lines wrap
set number                      " show the line number for each line
set relativenumber              " show the relatvie line number for each line
set ruler                       " show cursor position below each window

set mouse=a                     " list of flags for using the mouse
set noerrorbells                " ring the bell for error messages

set nohlsearch                  " highlight all matches for the last used search
set incsearch                   " show match for partly typed search command
set ignorecase                  " ignore case when using a search pattern
set smartcase                   " override 'ignorecase' when pattern has uppercase

set spell                       " highlight spelling mistakes
set spelllang=en_us             " list of accepted languages

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
set bg=dark
