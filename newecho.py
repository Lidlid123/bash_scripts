#!/usr/bin/python3



var1 = "cat"

var2 = "dog"


print(f"{var1} and {var2} are not good freinds  usuelly")



file = open("forloop.txt" , 'r' )



for i in file:
	print(f"{i}")


newfile = open("pythontest.txt" , 'w')

line1 = "this is line 1\n"

line2 = "this is line 2\n"


newfile.write(line1 + line2)

newfile.close()






