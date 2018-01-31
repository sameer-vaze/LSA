#!/usr/bin/env bash

value=$(df /boot -h | awk 'FNR==2' | awk '{print $5}' | cut -d'%' -f 1)
echo -e "/ is at \e[32m$value%\e[0m utilization"

if [ $value -gt 80 ]
then
	echo -e "Greater than \e[31m80\e[0m"
	mail -s "/boot is over utilized" vazesameer9@gmail.com <<< 'This is a warning message for /boot'
fi

value=$(df / -h | awk 'FNR==2' | awk '{print $5}' | cut -d'%' -f 1)
echo -e "/boot is at \e[32m$value%\e[0m utilization"

if [ $value -gt 80 ]
then
        echo -e "Greater than \e[31m80\e[0m"
        mail -s "/ is over utilized" vazesameer9@gmail.com <<< 'This is a warning message for /'
fi
