#!/bin/bash
action="$1"

case "$action" in
  u)
    echo upload..
    scp /home/pp/.config/rofi/custom_modi/ssh/hosts.json 128.199.91.217:/tmp/ssh.json
    scp /home/pp/.config/rofi/custom_modi/rdp/hosts.json 128.199.91.217:/tmp/rdp.json
    scp /home/pp/.config/rofi/custom_modi/bookmark/bookmarks.json 128.199.91.217:/tmp/bookmarks.json
  ;;
  d)
    echo download..
    scp 128.199.91.217:/tmp/ssh.json /home/pp/.config/rofi/custom_modi/ssh/hosts.json
    scp 128.199.91.217:/tmp/rdp.json /home/pp/.config/rofi/custom_modi/rdp/hosts.json
    scp 128.199.91.217:/tmp/bookmarks.json /home/pp/.config/rofi/custom_modi/bookmark/bookmarks.json 
  ;;
esac
