set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'Yggdroot/indentLine'

Plugin 'davidhalter/jedi-vim'

Plugin 'mhinz/vim-startify'

Plugin 'suan/vim-instant-markdown'

Plugin 'Lokaltog/vim-powerline'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'christoomey/vim-system-copy'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set history=100

" Automatic reloading on changes
autocmd! bufwritepost .vimrc source %

" Color scheme of the moment:
syntax on



" Show trailing whitespace as error message
match ErrorMsg '\s\+$'

" Better copy & paste
set pastetoggle=<F2>      " do not auto indent paste
set clipboard=unnamedplus


" Allow use of mouse
set mouse=a


" Show line numbers and length
set number              " show line numbers
highlight clear LineNr  " set line numbers to white
set tw=79               " width of document (used by gd)
set colorcolumn=80
highlight ColorColumn ctermbg=0


" Custom Tab Navigation
nnoremap <C-M-PageDown> :tabn<ESC>
nnoremap <C-M-PageUp> :tabp<ESC>
nnoremap <C-t>     :tabnew<CR>


" Custom searching
set hlsearch    " hightlight search
set incsearch   " move cursor to string pattern
set ignorecase  " Make search case insensitive
" set smartcase


" Change tab settings
set tabstop=4      " number of spaces created on tab
set expandtab      " make tab 4 spaces
set shiftwidth=4   " number of spaces created on tab in normal mode
set softtabstop=4  " number of spaces deleted on backspace


" Get rid of backup files
set nobackup
set nowritebackup
set noswapfile


" Add Python folding
set nofoldenable


" Add vim-powerline
set laststatus=2

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeIgnore=['\.pyc$', '\~$']


noremap <Leader>Y "+y
noremap <Leader>P "+p
