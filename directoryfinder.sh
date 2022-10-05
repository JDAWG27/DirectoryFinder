#!/bin/bash

if test -z "$1"
then
	
		ls -l >> winsideh.txt
		echo "Created whats inside here log (winsideh.txt)."
else
	
		ls -l $1 >> winside$1.txt
		echo "Created whats inside there log (winside"$1".txt)."
fi


