#!/usr/bin/env zsh

rm -rf ~/.config/yabai
rm -rf ~/.config/skhd

mkdir -p ~/.config/yabai
mkdir -p ~/.config/skhd

ln -s $(pwd)/yabairc ~/.config/yabai/yabairc
ln -s $(pwd)/skhdrc ~/.config/skhd/skhdrc

yabai --start-service
skhd --start-service
