#!/bin/bash -x
printf "Calculating monthly wages until employee reached total working hours\n"
#CONSTANTS
WAGEPERHOUR=20
WORKINGDAYS=20
TOTALWORKINGHOURS=200
#VARIABLES
hoursPerDay=0
isPartTime=1
isPresent=2
wage=0
monthlyWage=0
day=1
totalHoursWorked=0
#CALCULATING MONTHLY WAGES AND TOTAL WORKING HOURS IN WHILE LOOP TILL ANY OF THEM IS REACHED
while(($day<=$WORKINGDAYS && $totalHoursWorked<=$TOTALWORKINGHOURS)) 
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
	totalHoursWorked=$((totalHoursWorked+hoursPerDay))
	day=$((day+1))
	wage=$((WAGEPERHOUR*hoursPerDay))
	monthlyWage=$((monthlyWage+wage))
done
printf "Month wage: $monthlyWage\n"
