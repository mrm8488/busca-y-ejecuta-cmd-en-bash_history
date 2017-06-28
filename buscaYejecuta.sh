#! /bin/bash

# created by mrm8488@gmail.com

echo "Insert the command (options icluded) you remember to have executed:"
read input
cd $HOME
IFS=$'\n'
options=(`cat .bash_history | grep "$input" | uniq`)
unset IFS

if [ ${#options[@]} -eq 0 ]
then
 echo "There are no matches in your bash history for: $input"
 exit 0
else
 echo "Choose the command (number) you want to execute:"

 let arrayLength=${#options[@]}-1

 let index=0;
 
 for i in `seq 0 1 $arrayLength`
 do
   let index=$index+1	
   echo "$index) ${options[$i]}"
 done

 read option

 let option=$option-1

 ${options[$option]}

 fi
exit 0
