" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
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

"
" Vundle plugin install
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#rc()

" functionality
Plugin 'bling/vim-airline'
Plugin 'unite.vim'
Plugin 'fugitive.vim'
Bundle 'farseer90718/vim-taskwarrior'

" looks 
Plugin 'molokai'
Plugin 'chriskempson/base16-vim'


"
" Plugin configuration
filetype plugin indent on
colorscheme zenburn

" syntastic
map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>
let g:syntastic_auto_loc_list=1

" ghc-mod
" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>

" tagbar
nmap <leader> = :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
