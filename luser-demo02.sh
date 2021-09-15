#!/bin/bash



#display uid and username of the user executing this script

#diplay if user is root or not !



echo "your uid is $UID"

username=$(id -un)

echo "your  name is : ${username}"



if [[ "$UID" -eq 0   ]] ; then
	echo  "you are root!"
else
	echo "you are not root!"
fi











