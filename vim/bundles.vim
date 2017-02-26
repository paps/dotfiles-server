set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" To install and/or update, run:
" vim -u ~/.paps/vim/bundles.vim +PluginInstall

" To remove unused bundles, run:
" vim +PluginClean

" Comments after Bundle command are not allowed
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'milkypostman/vim-togglelist'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'kchmck/vim-coffee-script'
Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-jade'
Bundle 'digitaltoad/vim-pug'
Bundle 'tpope/vim-sleuth'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'chriskempson/base16-vim'

filetype plugin indent on " required!
