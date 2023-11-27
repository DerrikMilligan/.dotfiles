#!/bin/bash

# -----------------------------------------------------------------------------
# Installs
# -----------------------------------------------------------------------------
sudo pacman -S neovim stow ttf-monoid-nerd barrier keychain fd ripgrep lazygit

# -----------------------------------------------------------------------------
# Bash
# -----------------------------------------------------------------------------
stow bash

# -----------------------------------------------------------------------------
# Neovim
# -----------------------------------------------------------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
nvm install node
nvm use node

rm -rf ~/.config/nvim/
stow neovim


rm -rf ~/.config/alacritty/

stow alacritty

