#!/bin/bash

path=/home/pp/.config/rofi/custom_scripts/connect
hosts=$(<$path/hosts.json)

function sshHosts()
{
  echo $hosts | jq -r '.ssh[] | .customer + "_" + .hostname + "_" + .address' 
}


SSH=$( sshHosts | rofi -dmenu -p "SSH Host: ")

if [ -n "${SSH}" ]
then
    address=$(awk -F "_" '{print $3}' <<< $SSH)
		sshHost=$(jq ".ssh[] | select(.address == \"$address\")" <<< $hosts)
		user=$(jq -r '.user' <<< $sshHost)
    cmd="ssh $user@$address"
		urxvt -e sh -c "$cmd"
fi
