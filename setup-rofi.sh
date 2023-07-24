#!/bin/bash

git clone --depth=1 https://github.com/adi1090x/rofi.git /tmp/rofi-themes

pushd /tmp/rofi-themes

chmod +x setup.sh
./setup.sh

popd

rm -rf /tmp/rofi-themes
