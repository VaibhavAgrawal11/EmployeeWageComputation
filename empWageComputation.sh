#!/bin/bash -x
printf "Added get hours function feature in the program\n"

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

#FUNCTION TO GENERATE WORKING HOURS PER DAY
function getWorkingHours()
{
	random=$1
	case $random in 
      $isPresent)
         hoursPerDay=8
         ;;
      $isPartTime)
         hoursPerDay=4
         ;;
      *)
         hoursPerDay=0
         ;;
	esac
	echo $hoursPerDay
}

#CALCULATING MONTHLY WAGES AND TOTAL WORKING HOURS IN WHILE LOOP TILL ANY OF THEM IS REACHED
while(($day<=$WORKINGDAYS && $totalHoursWorked<=$TOTALWORKINGHOURS)) 
do
	random=$((RANDOM%3))
	hoursPerDay="$( getWorkingHours $random )"
	totalHoursWorked=$((totalHoursWorked+hoursPerDay))
	day=$((day+1))
	wage=$((WAGEPERHOUR*hoursPerDay))
	monthlyWage=$((monthlyWage+wage))
done
printf "Month wage: $monthlyWage\n"
