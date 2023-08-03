#!/bin/bash
sudo pacman -S neovim stow ttf-monoid-nerd

stow bash

rm -rf ~/.config/nvim/

stow neovim

rm -rf ~/.config/alacritty/

stow alacritty

