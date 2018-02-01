#!/usr/bin/env bash

echo -e "\e[1mNote this script executes 10 times with gaps of 10 seconds to display repetition. I would prefer using a cron job but the setup can't be done from within the same script\e[0m"

for ((i=0; i < 10; i++))
do
	value=$(df /boot -h | awk 'FNR==2' | awk '{print $5}' | cut -d'%' -f 1)
	echo -e "/ is at \e[32m$value%\e[0m utilization"

	if [ $value -gt 80 ]
	then
		echo -e "Greater than \e[31m80\e[0m"
		mail -s "/boot is over utilized" root@localhost <<< 'This is a warning message for /boot'
	fi

	value=$(df / -h | awk 'FNR==2' | awk '{print $5}' | cut -d'%' -f 1)
	echo -e "/boot is at \e[32m$value%\e[0m utilization"

	if [ $value -gt 80 ]
	then
	        echo -e "Greater than \e[31m80\e[0m"
	        mail -s "/ is over utilized" root@localhost <<< 'This is a warning message for /'
	fi
sleep 10s
done
