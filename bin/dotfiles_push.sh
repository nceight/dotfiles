#!/bin/sh

dotfiles_dir="$HOME/Projects/Personal/dotfiles"

cp -r $HOME/.zshrc $dotfiles_dir
cp -r $HOME/.config/nvim $dotfiles_dir
cp -r $HOME/.config/alacritty $dotfiles_dir
cp -r $HOME/.config/starship $dotfiles_dir
cp -r $HOME/.config/gitui $dotfiles_dir
cp -r $HOME/.local/bin/*.sh $dotfiles_dir/bin/

