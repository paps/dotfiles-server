set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" To install and/or update, run:
" vim -u ~/.paps/vim/bundles.vim +PluginInstall

" To remove unused bundles, run:
" vim +PluginClean

" NOTE: Comments after Bundle command are not allowed
Plugin 'gmarik/vundle'

" Generic useful plugins
" ======================
" Fix vim's repeat . command
Plugin 'tpope/vim-repeat'
" Useful :Git commands
Plugin 'tpope/vim-fugitive'
" Auto-detect indent from file/folder contents
Plugin 'tpope/vim-sleuth'
" Highlight trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
" leader-l, leader-q to toggle location list, quickfix list
Plugin 'milkypostman/vim-togglelist'

" Styling
" =======
" Support for 256 colors
Plugin 'chriskempson/base16-vim'
" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" File management
" ===============
" Buffer quick-switch (leader-b)
Plugin 'jeetsukumaran/vim-buffergator'
" Left-side file browser (leader-n)
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'

" Analytics
Plugin 'wakatime/vim-wakatime'

filetype plugin indent on " required!
