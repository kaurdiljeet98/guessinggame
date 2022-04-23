#This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number.
#THE user will be informed if their guess is too high or too low.
#Once the user guesses the correct number of files in the current directory they should be congratulated.

#!/usr/bin/env bash 

number_of_files=$(ls | wc -l) #count number of FILES in working directory
#echo $number_of_files

function guesser {
if [[ $1 -eq $number_of_files ]]
then
	echo "congrats"
elif [[ $1 -lt $number_of_files ]]
then
	echo "answer too low"
else
	echo "answer too high"
fi
}



tester="na"
while [[ $tester != "congrats" ]]
do
  #echo $tester
  echo "How many files do you think there are in the working directory?"
  read response
  guesser $response
  tester=$(guesser $response)
done
