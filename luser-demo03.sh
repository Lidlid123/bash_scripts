#!/bin/bash



#diplay the uid and username of ther user executing the script

# diplay if the user is the vagrant user or not

#display the uid

# only display if the uid does not match 1000


#display username


#test if the command succcedd







myuid=$(id -u)

myusername=$(whoami)


uidtotest="1000"

echo " your user uid : ${myuid} , your  username : ${myusername}"



if [[ "$myuid" -ne "${uidtotest}"  ]] ; then
	echo "you are not the corret user , your id suppose to  be : ${uidtotest} , not : ${myuid}"
	 
else
	echo "you are the corret user"
fi

echo "$myusername"

myusername=$(id -un  )

if [[ "${?}" -eq 0 ]] ; then
	echo "the command works!"
else
	echo "didnt work"
	exit 1
fi



user_name_test="lidor"


if [[ "${myusername}" == "${user_name_test}"  ]]; then
	echo "your user name is the same as : ${user_name_test}"
else
	echo "not the current user , you are : ${myusername} , insteed you need to be : ${user_name_test}"
fi




if [[ "${myusername}" != "${user_name_test}"   ]] ; then
	echo "your username does not match : ${user_name_test}"
	exit 1
fi	



exit 0 











