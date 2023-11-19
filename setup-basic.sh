#!/bin/bash
#
sudo pacman -S neovim stow ttf-monoid-nerd barrier keychain

stow bash

rm -rf ~/.config/nvim/

stow neovim

rm -rf ~/.config/alacritty/

stow alacritty

