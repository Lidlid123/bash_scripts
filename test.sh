#!/bin/bash



# catching error messege insdie a variable 




command=$(head -n1 /fakedir 2>&1 >/dev/null)


echo " $(date | awk '{print $5}') : ${command}" >> error.log
























