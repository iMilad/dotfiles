#!/bin/bash

DOTFILES_ROOT=$(pwd)

#symlink dotfiles into home directory
install_dotfiles () {

  local overwrite_all=false backup_all=false skip_all=false

  for src in $(find "$DOTFILES_ROOT/" -maxdepth 2 -name '*.symlink')
  do
    dst="$HOME/$(basename "${src%.*}")"
    ln -s "$src" "$dst"
  done
}

mkdir -p ~/.config # in case if there is not any custom config

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

install_dotfiles

#setup oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
cd ~/.oh-my-zsh/custom/plugins

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

# Install nerd-font (change terminal fonts afterwards to Hack font)
# https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular
cd /usr/share/fonts/
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
fc-cache -f -v

# install bat for cat  (Linux)
dnf install -y bat

cd ~/.oh-my-zsh/custom/
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cd $DOTFILES_ROOT

#setup submodules of this repository
git submodule init
git submodule update

# symlink config folder
ln -s $DOTFILES_ROOT/.config/* ~/.config

# symlink bin folder
mkdir ~/bin
ln -s $DOTFILES_ROOT/bin/* ~/bin

# symlink .oh-my-zsh themes folder
ln -s $DOTFILES_ROOT/.oh-my-zsh/custom/themes/* ~/.oh-my-zsh/custom/themes

# symlink custom zsh config
ln -s $DOTFILES_ROOT/.oh-my-zsh/custom/*.zsh ~/.oh-my-zsh/custom
