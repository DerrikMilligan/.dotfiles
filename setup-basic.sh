#!/bin/bash
sudo pacman -S neovim stow ttf-monoid-nerd barrier

stow bash

rm -rf ~/.config/nvim/

stow neovim

rm -rf ~/.config/alacritty/

stow alacritty

