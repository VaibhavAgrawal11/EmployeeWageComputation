#!/bin/bash -x
printf "Added part time feature to calculate daily wages\n"
#CONSTANTS
WAGEPERHOUR=20
#VARIABLES
hoursPerDay=0
isPartTime=1
isPresent=2
wage=0
random=$((RANDOM%3))
if(($random==$isPresent))
then
	printf "Employee is full time present\n"
	hoursPerDay=8
elif(($random==$isPartTime))
then
	printf "Employee is part time present\n"
	hoursPerDay=4
else
	printf "Employee is absent\n"
	hoursPerDay=0
fi
wage=$((WAGEPERHOUR*hoursPerDay))
