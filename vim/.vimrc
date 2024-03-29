""" Vundle Required Options
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vimwiki'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/fish.vim'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

""" General options
syntax enable " Enable syntax highlights
set ttyfast " Faster refraw
set mouse=nv " Mouse activated in Normal and Visual Mode
set shortmess+=I " No intro when starting Vim
set smartindent " Smart... indent
set expandtab " Insert spaces instead of tabs
set softtabstop=2 " ... and insert two spaces
set shiftwidth=2 " Indent with two spaces
set incsearch " Search as typing
set hlsearch " Highlight search results
set cursorline " Highligt the cursor line
set showmatch " When a bracket is inserted, briefly jump to the matching one
set matchtime=3 " ... during this time
set virtualedit=onemore " Allow the cursor to move just past the end of the line
set history=100 " Keep 100 undo
set wildmenu " Better command-line completion
set scrolloff=10 " Always keep 10 lines after or before when scrolling
set sidescrolloff=5 " Always keep 5 lines after or before when side scrolling
set noshowmode " Don't display the current mode
set gdefault " The substitute flag g is on
set hidden " Hide the buffer instead of closing when switching
set backspace=indent,eol,start " The normal behaviour of backspace
set showtabline=2 " Always show tabs
set laststatus=2 " Always show status bar
set number " Show the line number
set relativenumber
set updatetime=1000
set ignorecase " Search insensitive
set smartcase " ... but smart
let &showbreak="\u21aa " " Show a left arrow when wrapping text
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set synmaxcol=300 " Don't try to highlight long lines
set guioptions-=T " Don't show toolbar in Gvim
" Open all cmd args in new tabs
execute ":silent :tab all" 


""" Prevent lag when hitting escape
set ttimeoutlen=0
set timeoutlen=1000 
au InsertEnter * set timeout
au InsertLeave * set notimeout

""" tell vim to use bash even if fish is my daiy driver
set shell=/bin/bash


""" disable arrow keys for great justice
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""" quit with :Q
:command! -bar -bang Q quit<bang>

let maplocalleader = ','

colorscheme minimalist
let g:airline_theme='minimalist'

autocmd filetype crontab setlocal nobackup nowritebackup

