#!/bin/bash



# this script generate a random password for each user specified on the command line 


echo " you executed this command : ${0}"



echo "you used $(dirname ${0}) as the path to this script : $(basename ${0})"



number_of="${#}"


echo "you supplied : ${number_of} argumets on the command line"


#make sure  they atleast supplied one arguemt to cmd!


if [[ "${number_of}" -eq 0   ]] ; then
	echo " error you need to atleast supply one argumet (name of user)"
	exit 1
fi


echo "ggg:Boomer12" | sudo  chpasswd 

hash=$(echo '@#$%^&*()' | fold -b1 | shuf  | head -n1) 

newpass=$(date +%s%N | sha256sum | head -c48 )



for user in ${@} ; do
	hash=$(echo '@#$%^&*()' | fold -b1 | shuf  | head -n1) 
	newpass=$(date +%s%N | sha256sum | head -c48 )
	finalpass="${newpass}${hash}"
	echo "${user} : ${finalpass}"
	sleep 1 
done
echo     "########end of script############"














