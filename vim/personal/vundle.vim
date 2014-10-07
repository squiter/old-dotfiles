set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ======================= My Plugins =============================

Plugin 'DataWraith/auto_mkdir.git'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim.git'
Plugin 'godlygeek/tabular.git'
Plugin 'kana/vim-textobj-user.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'nelstrom/vim-textobj-rubyblock.git'
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'sjl/gundo.vim.git'
Plugin 'stephenmckinney/vim-solarized-powerline.git'
Plugin 'szw/vim-maximizer.git'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'thoughtbot/vim-rspec.git'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround.git'
Plugin 'wakatime/vim-wakatime.git'

" =====================End My Plugins =============================

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
