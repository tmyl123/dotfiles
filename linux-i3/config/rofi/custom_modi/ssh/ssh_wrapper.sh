#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

user=$(awk -F '@' '{print $1}' <<< "$@")
address=$(awk -F '@' '{print $2}' <<< "$@")
pass=$(jq --arg address "$address" --arg user "$user"  '
       .[] 
       | select(.user == $user and .address == $address)' "$CWD"/hosts.json | jq -r .pass)
#echo $user $address $pass > /tmp/foo

#sshpass -p $pass ssh $user@$address
urxvt -e sh -c "sshpass -p $pass ssh $user@$address" &
