#!/bin/bash -x
printf "Added case statements to part time feature\n"
#CONSTANTS
WAGEPERHOUR=20
#VARIABLES
hoursPerDay=0
isPartTime=1
isPresent=2
wage=0
random=$((RANDOM%3))
case $random in 
	$isPresent)
		printf "Employee is full time present\n"
		hoursPerDay=8
		;;
	$isPartTime)
		printf "Employee is part time present\n"
		hoursPerDay=4
		;;
	*)
		printf "Employee is absent\n"
		hoursPerDay=0
		;;
esac
wage=$((WAGEPERHOUR*hoursPerDay))
