#!/bin/bash




file="/tmp/data"

head -n1 /etc/passwd > ${file}

read line < ${file}


echo "${line}"









# redirect stdin to a program , using fd 0 



read line 0< ${file}

echo

echo ${line}



head -n3 /etc/passwd 1> ${file}

echo

echo "content of :  ${file}"

echo


cat ${file}

echo

err_file="/tmp/data.err"

head -n3 /etc/passwd /fake 2> ${err_file} 1> ${file}


echo

echo "this is ${err_file} content"
cat ${err_file}

echo 

echo "this is ${file} content "
cat ${file}


both_file="/tmp/data.both"

head -n3 /etc/passwd /fake > ${both_file} 2>&1

echo

cat ${both_file}





head -n3 /etc/passwd /fake 2>&1 | cat -n 






echo "this is stderr" >&2 

