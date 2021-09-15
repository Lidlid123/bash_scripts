#!/bin/bash


#demostrate the use of shift and while loops 



echo " parameter 1 : ${1} , parameter 2 : ${2} , paraemter 3 : ${3}"




while [[ "${#}" -gt 0  ]] ; do 
	echo "number of parameters is : ${#}"
	echo "para1 : ${1}"
	echo "para2 : ${2}"
	echo "para3 : ${3}"
	if [[ "${#}" -eq 1 ]] ; then
		echo "this is the end (:"
	fi
	shift 1
	
done

	











