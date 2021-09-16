#!/bin/bash






e="$1"

echo "${e}"




new="${@}"



echo "${new}"




while [[ "${#}" -gt 0 ]] ; do 
	echo "this is arg 1 : ${1}"
	shift
	sleep 1
	echo "this is arg 2 : ${1}"
	shift
	sleep 1
	echo "this is arg 3 : ${1}"
	shift
	echo "####The End######"

done













