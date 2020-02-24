#!/bin/bash -x
printf "Welcome to Employee Wage Computation\n"
isPresent=1
random=$((RANDOM%2))
if(($random==$isPresent))
then
	printf "Employee is present\n"
else
	printf "Employee is absent\n"
fi
