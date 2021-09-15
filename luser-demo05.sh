#!/bin/bash



# this script generreate a list of random password


pass="${RANDOM}"

echo "${pass}"

# 3 random numbers


dt=$(date +%s%N${RANDOM}${RANDOM} | sha256sum  | head -c48)


pass="${dt}"


specchar='!@#$%^&*()'

newpass=$(echo "${specchar}" | fold -b1 | shuf | head -n1)

pass="${dt}${newpass}"

echo "${pass}"
















