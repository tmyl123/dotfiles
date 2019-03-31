if [ "$@" ]
  then 
    pid=$(printf "%d" $(echo -e "$@" | cut -d ":" -f 1 ))
    echo "$pid" > /dev/null
    #kill "$pid" && exit
  else
    ps -U $UID --no-headers -o "%p: %c"
fi
