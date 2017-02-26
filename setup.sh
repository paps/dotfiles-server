#!/usr/bin/env bash

# arg number check
if [ $# -ne 1 ]
then
    echo "Usage: $0 /absolute/path/to/conf/git"
    exit 1
fi

# absolute directory path check
case $1 in
    /*)
        if [ ! -d "$1" ]
        then
            echo "$1 is not a directory"
            exit 1
        fi
        ;;
    *)
        echo "$1 is not an absolute path"
        exit 1
        ;;
esac

# dir
echo "Link: ~/.paps -> $1"
rm -ivr ~/.paps
ln -sT "$1" ~/.paps

# vim
echo "Link: ~/.vimrc -> ~/.paps/vim/vimrc"
rm -ivr ~/.vimrc
ln -sT ~/.paps/vim/vimrc ~/.vimrc

echo "Link: ~/.vim -> ~/.paps/vim/vim"
rm -ivr ~/.vim
ln -sT ~/.paps/vim/vim ~/.vim

# nvim
echo "Link: ~/.config/nvim -> ~/.paps/vim/vim"
rm -ivr ~/.config/nvim
ln -sT ~/.paps/vim/vim ~/.config/nvim

echo "Link: ~/.config/nvim/init.vim -> ~/.paps/vim/vimrc"
rm -ivr ~/.config/nvim/init.vim
ln -sT ~/.paps/vim/vimrc ~/.config/nvim/init.vim

# zsh
echo "Link: ~/.zshrc -> ~/.paps/zsh/zshrc"
rm -ivr ~/.zshrc
ln -sT ~/.paps/zsh/zshrc ~/.zshrc

echo "Link: ~/.zshenv -> ~/.paps/zsh/zshenv"
rm -ivr ~/.zshenv
ln -sT ~/.paps/zsh/zshenv ~/.zshenv

echo "Link: ~/.inputrc -> ~/.paps/zsh/inputrc"
rm -ivr ~/.inputrc
ln -sT ~/.paps/zsh/inputrc ~/.inputrc

# git
echo "Link: ~/.gitconfig -> ~/.paps/git/gitconfig"
rm -ivr ~/.gitconfig
ln -sT ~/.paps/git/gitconfig ~/.gitconfig

# tmux
echo "Link: ~/.tmux.conf -> ~/.paps/tmux/tmux.conf"
rm -ivr ~/.tmux.conf
ln -sT ~/.paps/tmux/tmux.conf ~/.tmux.conf
