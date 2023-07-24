#!/bin/bash

sudo pacman -S python-pywal mpd

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git /tmp/polybar-themes

pushd /tmp/polybar-themes

chmod +x setup.sh
./setup.sh

popd

rm -rf /tmp/polybar-themes
