#!/bin/bash


user_id=$(id -u)



if [[ "${user_id}" != 0 ]] ; then
	echo "this script must be run only with root privileges only!"
	exit 1 
fi



if [[ "${#}" -eq 0  ]]; then
	echo "please supply at least one argumet 
		 example : sudo ${0} username [commet]"
	exit 1
fi


username="${1}"

shift

commets="${@}"

logfile="logfile.log"

useradd -m "${username}" -c "${commets}"

echo "${commets[@]}"


password=$(date +%s%N${RANDOM} | sha256sum | head -c48)



echo "${username}:${password}" | sudo  chpasswd

passwd -e ${username} 1> /dev/null


echo "your username is : ${username}"
echo " your temporary password is : ${password}"

echo "the host name of machine is : $(hostname)"






























