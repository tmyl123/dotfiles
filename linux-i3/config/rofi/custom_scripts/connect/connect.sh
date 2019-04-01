#!/bin/bash

path=/home/pp/.config/rofi/custom_scripts/connect
OPT=( ssh rdp )

function connectOptions()
{
  printf "%s\n" "${OPT[@]}"
}


CONNECTMETHOD=$( connectOptions | rofi -dmenu -p "Connect Methods: ")

if [ -n "${CONNECTMETHOD}" ]
then
    "$path/${CONNECTMETHOD}.sh"
fi
