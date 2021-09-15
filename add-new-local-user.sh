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

commet="${2}"

logfile="logfile.log"

if [[ ${commet} == *" "* || -z "${commet}" ]]; then
        useradd -m "${username}"  -c "${commet}" 2>> ${logfile}
	if [[ "${?}" -ne 0 ]] ; then 
		echo "there was a probelem with the creation proccess , check log file : logfile.log"
		exit 1
	fi
else
	echo " second arguemet must contain ' commet '  "
	exit 1
fi



password=$(date +%s%N${RANDOM} | sha256sum | head -c48)



echo "${username}:${password}" | sudo  chpasswd


echo "your username is : ${username}"
echo " your temporary password is : ${password}"

echo "the host name of machine is : $(hostname)"






























