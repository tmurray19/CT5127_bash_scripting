#!/bin/bash
FILE=/etc/passwd
read -p "Enter a username  > " user_name
file_info=$(grep "$user_name:" $FILE)

if [[  file_info  ]];then
IFS=":" read  user pw uid  gid  name  home  shell  <<< "$file_info"
echo "User =           ‘$user ’"
echo "UID =            ‘$uid ’"
echo "GID =            ‘$gid ’"
echo "Full  Name =     ‘$name ’"
echo "Home  Dir. =     ‘$home ’"
echo "Shell =          ‘$shell ’"
else
echo "No such  user ’$user_name ’"  >&2
exit  1
fi
exit 0
