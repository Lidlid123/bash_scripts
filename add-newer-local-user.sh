#!/bin/bash


user_id=$(id -u)





if [[ "${user_id}" != 0   ]] ; then
	echo "this script must be run as sudo privilieges!" 1>&2
	exit 1
fi 



if [[ "${#}" -lt 1 ]] ; then
cat << EOF 1>&2
you must supply at least one argument ,
example : "${0}" username [commet]
EOF
exit 1

fi


username="${1}"

shift

commet="${@}"

useradd -m "${username}"  -c "${commet}" &>/dev/null

if [[ ${?} != 0 ]] ; then
	echo "there was a problem with user creation!" 1>&2
	exit 1
fi



password=$(echo ${RANDOM} | sha256sum  | head -c48)

echo "${username}:${password}" |  sudo chpasswd

passwd -e ${username} &>/dev/null

echo "account name : ${username}"

echo "account password : ${password}"

echo "the host name is : $(hostname)"
















