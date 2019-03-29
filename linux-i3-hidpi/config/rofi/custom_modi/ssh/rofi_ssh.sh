#!/bin/bash

hostfile=/home/pp/.ssh/hosts.json
#scriptpath=/home/pp/.config/rofi/custom_modi/ssh
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

if [ "$@" ]
  then 
    useraddress=$(awk '{print $NF}' <<< "$@")
    #urxvt -e sh -c 'ssh user@host'
		"$CWD"/ssh.sh "$useraddress" > /dev/null
  else
    jq -r '.[] | .hostname + " => " + .user + "@" + .address' "$hostfile"
fi
