#!/bin/bash

CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
editStr="編輯列表"

if [ "$@" ]; then
  if [ "$@" == "$editStr" ]; then
    "$CWD"/edit_wrapper.sh "$CWD"/hosts.json > /dev/null
  else
    useraddress=$(awk '{print $NF}' <<< "$@")
    #urxvt -e sh -c 'ssh user@host'
    "$CWD"/ssh_wrapper.sh "$useraddress" > /dev/null
  fi
  else
    echo "$editStr"
    jq -r '.[] | .hostname + " => " + .user + "@" + .address' "$CWD"/hosts.json
fi
