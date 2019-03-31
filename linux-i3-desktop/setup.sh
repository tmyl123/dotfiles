#!/bin/bash

[ -d ~/.config ] || mkdir ~/.config

configfolders=( "custom_scripts" "dunst" "i3" "polybar" "rofi" )
configfiles=( "zshrc" "tmux.conf" "Xresources" )

for cf in "${configfolders[@]}"
do
  cp -r "$cf" ~/.config/"$cf"
done

for cf in "${configfiles[@]}"
do
  cp $cf ~/".$cf" 
done

cat fonts | xargs yay -S
