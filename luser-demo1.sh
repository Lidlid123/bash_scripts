#!/bin/bash


# this is just a commet for information only 



# display hello
echo "hello"


#assign value to a variable

word="script"


#diplay value of variable

echo "$word"


echo '$word'


#combine variables with text string


echo " this is a shell  $word"


#another syntx

echo "this is a shell ${word}"



#append text to variable


echo "${word}ing is fun"



ending="ed"




#combine 2 variables!

echo "this is ${word}${ending}"

#re assign


ending="ing"


echo "${word}${ending} is fun"



ending="s"

echo "you are going to write many ${word}${ending} in this course! (:"





