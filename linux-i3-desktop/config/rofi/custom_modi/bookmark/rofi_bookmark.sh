#!/bin/bash

CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
editStr="編輯列表"

if [ "$@" ]; then
  if [ "$@" == "$editStr" ]; then
    "$CWD"/edit_wrapper.sh "$CWD"/bookmarks.json > /dev/null
  else
    address=$(awk '{print $NF}' <<< "$@")
    #firefox address
    "$CWD"/browser_wrapper.sh "$address" > /dev/null
  fi
  else
    echo "$editStr"
    jq -r '.[] | .title + " => " + .address' "$CWD"/bookmarks.json | column -t
fi
