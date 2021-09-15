#!/bin/bash



#this script create account  on local system 

# you will be prompt for the account name and password


#ask user name

#ask real name


#ask for password



#create the user


# set the password for the user 


# for password change on first login 


read -p " please enter username to create: " user_name

read -p "please enter real name of user: " real_name


read -p "enter user password: " password

sudo useradd -m "${user_name}" -c "${real_name}" 


echo "${user_name}:${password}" | sudo chpasswd

sudo passwd -e "${user_name}" 1>/dev/null




























