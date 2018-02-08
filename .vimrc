set exrc
set secure
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set hlsearch
set colorcolumn=110

highlight ColorColumn ctermbg=darkgray
highlight CursorLine ctermbg=LightBlue

set number
set laststatus=2

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL,"

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'google/vim-colorscheme-primary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'airblade/vim-gitgutter'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'szw/vim-tags'
Plugin 'rdnetto/YCM-Generator'
Plugin 'pseewald/vim-anyfold'
Plugin 'Yggdroot/indentLine'
Plugin 'lyuts/vim-rtags'
Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'bogado/file-line'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set t_Co=256
set background=dark
colorscheme primary

colorscheme PaperColor
au vimenter * if !argc() | NERDTree | endif

let mapleader=","
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gi :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter GoToInclude<CR>

let g:ycm_semantic_triggers = { 'cpp': [ 're!.' ] }
let anyfold_activate=1
set foldlevel=0
