#!/bin/bash

# .config files
[ -d config ] || mkdir config

configfolders=( "custom_scripts" "dunst" "i3" "polybar" "rofi" )
configfiles=( "zshrc" "tmux.conf" "Xresources" "vimrc")

for cf in "${configfolders[@]}"
do
  cp -r ~/.config/"$cf" config/
done

for cf in "${configfiles[@]}"
do
  cp ~/".$cf" $cf
done

yay -Qe | grep "ttf\|fonts" > fonts

