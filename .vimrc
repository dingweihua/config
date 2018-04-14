set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternately, pass a path where Vundleshould install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

call pathogen#infect()
autocmd vimenter * NERDTree

syntax enable
syntax on "自动语法高亮
set nu "显示行号
set autoread "当文件在外部被修改时，自动重新读取
set autoindent "换行后自动缩进
set smartindent "智能对齐
set expandtab "Tab自动转换成空格
set tabstop=4 "Tab代表4个空格的宽度
set hlsearch "选中高亮显示
set backspace=2
set tags=./tags,tags;$HOME
set background=dark
colorscheme solarized
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nnoremap gd :YcmCompleter GoToDeclaration<CR>
