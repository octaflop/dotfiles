set nocompatible              " be iMproved, required
filetype off                  " required
" Required for powerline
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Installed by me
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'majutsushi/tagbar'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'

Plugin 'airblade/vim-gitgutter'

Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Use airline if you're not a fan of powerline
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Custom Key Bindings
map <C-n> :NERDTreeToggle<CR>

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
