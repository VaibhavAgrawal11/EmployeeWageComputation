#!/bin/bash -x
printf "Calculating monthly wages for employee\n"
#CONSTANTS
WAGEPERHOUR=20
WORKINGDAYS=20
#VARIABLES
hoursPerDay=0
isPartTime=1
isPresent=2
wage=0
monthlyWage=0
#CALCULATING MONTHLY WAGES IN THE FORLOOP
for((days=1; days<=$WORKINGDAYS; days++))
do
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
	monthlyWage=$((monthlyWage+wage))
done
printf "Month wage: $monthlyWage\n"
