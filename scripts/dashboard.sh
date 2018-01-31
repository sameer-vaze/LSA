#!/usr/bin/env bash

echo -e "\e[34m============CPU and Memory============\e[0m"

value=$(uptime | awk '{print $8 $9 $10}')
echo -e "CPU Load averages are \e[32m$value\e[0m"
value=$(free -m | awk 'FNR==2' | awk '{print $4}')
echo -e "Free RAM available is \e[32m$value MB\e[0m\n"
value=$(wc -l /proc/net/dev | awk '{print $1}')

echo -e "\e[34m============Network Stats============\e[0m"

for (( i=3; i<=$value; i++))
	do
		interface=$(cat /proc/net/dev | awk "FNR==$i" | cut -d':' -f 1)
		recv=$(cat /proc/net/dev | awk "FNR==$i" | awk '{print $2}')
		sent=$(cat /proc/net/dev | awk "FNR==$i" | awk '{print $10}')
		echo -e "$interface has received \e[32m$recv bytes\e[0m and sent \e[32m$sent bytes\e[0m"
	done

echo -e "\n"
echo -e "\e[34m============Account Stats============\e[0m"
total_users=$(cat /etc/passwd | wc -l)
echo -e "The total number of users is \e[32m$total_users\e[0m"
curr_users=$(who | wc -l)
echo -e "The number of current users is \e[32m$curr_users\e[0m"
echo -e "Shells:\n"
cat /etc/passwd | cut -d':' -f 7 | sort | uniq -c | awk '{print $2":"$1}'
echo -e "\n"
echo -e "\e[34m============Filesystem Stats============\e[0m"
elements_in_fs=$(df -i | awk 'FNR==2' | awk '{print $3}')
echo -e "The number of files in the file system is \e[32m$elements_in_fs\e[0m"

