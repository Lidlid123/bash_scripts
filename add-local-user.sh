#!/bin/bash


user_id=$(id -u)



if [[ "${user_id}" != 0 ]] ; then
	echo "this script must be run only with root privileges only!"
	exit 1 
fi

read -p "please enter the username : " username

read -p " enter the user real name : " commet

read -p "enter password for user : " password



useradd -m "${username}"  -c "${commet}" 




if [[ "${?}" != 0   ]]; then
        echo "sorry there was a problem with the  user creation"
        exit 1
fi




 

echo "${username}:${password}" | chpasswd

passwd -e ${username} 1>/dev/null

compname=$(hostname)

echo " your info is,
password :  ${password}

username : ${username}

hostname : ${compname}
"













