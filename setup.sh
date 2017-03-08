#!/usr/bin/env bash

# arg number check
if [ $# -lt 1 ]
then
    echo "Usage: $0 /absolute/path/to/conf/git [--force]"
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

rmflags="-ivr"
if [ "$2" = "--force" ]
then
    rmflags="-fvr"
fi

# dir
echo "Link: ~/.paps -> $1"
rm $rmflags ~/.paps
ln -sT "$1" ~/.paps

# vim
echo "Link: ~/.vimrc -> ~/.paps/vim/vimrc"
rm $rmflags ~/.vimrc
ln -sT ~/.paps/vim/vimrc ~/.vimrc

echo "Link: ~/.vim -> ~/.paps/vim/vim"
rm $rmflags ~/.vim
ln -sT ~/.paps/vim/vim ~/.vim

# nvim
echo "Link: ~/.config/nvim -> ~/.paps/vim/vim"
rm $rmflags ~/.config/nvim
ln -sT ~/.paps/vim/vim ~/.config/nvim

# zsh
echo "Link: ~/.zshrc -> ~/.paps/zsh/zshrc"
rm $rmflags ~/.zshrc
ln -sT ~/.paps/zsh/zshrc ~/.zshrc

echo "Link: ~/.zshenv -> ~/.paps/zsh/zshenv"
rm $rmflags ~/.zshenv
ln -sT ~/.paps/zsh/zshenv ~/.zshenv

echo "Link: ~/.inputrc -> ~/.paps/zsh/inputrc"
rm $rmflags ~/.inputrc
ln -sT ~/.paps/zsh/inputrc ~/.inputrc

# git
echo "Link: ~/.gitconfig -> ~/.paps/git/gitconfig"
rm $rmflags ~/.gitconfig
ln -sT ~/.paps/git/gitconfig ~/.gitconfig

# tmux
echo "Link: ~/.tmux.conf -> ~/.paps/tmux/tmux.conf"
rm $rmflags ~/.tmux.conf
ln -sT ~/.paps/tmux/tmux.conf ~/.tmux.conf
