" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
set relativenumber
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2
set autoindent
set textwidth=79
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
set ruler
set background=dark
set mouse=a
colorscheme jellybeans


"
" Plugins
set nocompatible 
filetype off
call vundle#rc()

Plugin 'bling/vim-airline'
Plugin 'fugitive.vim'
Plugin 'bling/vim-bufferline'
Plugin 'unite.vim'
Plugin 'SuperTab'
Bundle 'farseer90718/vim-taskwarrior'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'


"
" Plugin Config
filetype plugin indent on

" vim-taskwarrior
let g:task_rc_override = 'rc.defaultwidth=0'
let g:task_rc_override = 'rc.defaultheight=0'

" easytags
let g:easytags_async = 1

" NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

