#! /bin/bash

declare -a lists
count=0
while [ 1 ]
do
	read -p  "Enter a new word: " word
	case $word in
	quit) break ;;
	list) echo ${lists[*]};;
	*) lists[$count]=$word
		let count=count+1
		echo "Length: $count" ;;
	esac
done
