#!/bin/bash

# variety for wallpapers
# maim and xclip for screenshots
sudo pacman -S variety maim xclip

rm -rf ~/.config/leftwm/

stow arco-leftwm

