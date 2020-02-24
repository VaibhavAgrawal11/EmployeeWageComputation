#!/bin/bash -x
printf "Calculate daily wages\n"
#CONSTANTS
WAGEPERHOUR=20
FULLDAYHOURS=8
#VARIABLES
isPresent=1
wage=0
random=$((RANDOM%2))
if(($random==$isPresent))
then
	printf "Employee is present\n"
	wage=$((WAGEPERHOUR*FULLDAYHOURS))
	printf "$wage"
else
	printf "Employee is absent\n"
	printf "$wage"
fi
