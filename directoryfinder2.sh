#!/bin/bash

echo "Add -R for Recursive"			#CREATES A TEXT FILE
read option					#WITH INFORMATION ABOUT ALL
echo "Add directory"				#FILES AND DIRECTORIES WITHIN
read directory					#	recursiveness not working #


if test -z "$option" && test -z "$directory" 			#if no option and no directory
then
	ls -l > winsideh.txt					#overwrite winsideh.txt
	echo "Created whats inside here log (winsideh.txt)."

elif test -n "$option" && test -z "$directory" 			#if option, and no directory
then
	ls -R > winsideRh.txt					#overwrite winsidehR.txt
	echo "Created whats inside here recursively log (winsideRh.txt)."
	
elif test -n "$option" && test -n "$directory"			#if option, and directory
then
	ls -R "$directory" > winsideR"$directory".txt		#overwite winside$directoryR.txt with the inputted directory
	echo "Created whats inside there recursively log (winsideR$directory.txt)."p

elif test -z "$option" && test -n "$directory"			#if no optio, and there is a directory
then
	ls -l "$directory" > winside"$directory".txt		#overwite winside$directory.txt with the inputted directory
	echo "Created whats inside there log (winside$directory.txt)."

else echo "Error in script."					#error by me :(
fi

