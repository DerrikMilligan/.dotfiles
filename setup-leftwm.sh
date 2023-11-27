#!/bin/bash

# -----------------------------------------------------------------------------
# Installs
# -----------------------------------------------------------------------------

# variety for wallpapers
# maim and xclip for screenshots
sudo pacman -S variety maim xclip


# -----------------------------------------------------------------------------
# Rofi
# -----------------------------------------------------------------------------

git clone --depth=1 https://github.com/adi1090x/rofi.git /tmp/rofi-themes

pushd /tmp/rofi-themes

chmod +x setup.sh
./setup.sh

popd

rm -rf /tmp/rofi-themes


# -----------------------------------------------------------------------------
# Left WM
# -----------------------------------------------------------------------------

rm -rf ~/.config/leftwm/
stow arco-leftwm


# -----------------------------------------------------------------------------
# Variety
# -----------------------------------------------------------------------------

rm -rf ~/.config/variety/
stow variety


# -----------------------------------------------------------------------------
# Fixes
# -----------------------------------------------------------------------------

OLDBROWSER="$BROWSER"
unet BROWSER
xdg-settings set default-url-scheme-handler https firefox.desktop
xdg-settings set default-url-scheme-handler http firefox.desktop
export BROWSER="$OLDBROWSER"
