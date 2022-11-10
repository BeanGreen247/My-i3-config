#!/bin/bash

i3status --config /home/$USER/.config/i3/i3status.conf | while :
do
	read line
	LG=$(xkblayout-state print "%s") 
	dataLG="[{ \"full_text\": \"LANG: $LG\", \"color\":\"#00FF00\" },"
	echo "${line/[/$dataLG}" || exit 1
done | while :
do
	read line
	IP=$(hostname --all-ip-addresses| awk '{print $1}')
	dataIP="[{ \"full_text\": \"IPv4: $IP\", \"color\":\"#03f8fc\" },"
	echo "${line/[/$dataIP}" || exit 1
done  | while :
do	
	read line
	FREE=$(free -m|awk {'print $4'}| tail -n +2| head -n +1)
	dataFREE="[{ \"full_text\": \"availMem: $FREE MiB\", \"color\":\"#ffff00\" },"
	echo "${line/[/$dataFREE}" || exit 1
done | while :
do	
	read line
	CACHED=$(free -m|awk {'print $6'}| tail -n +2)
	dataCACHED="[{ \"full_text\": \"cachedMem: $CACHED MiB\", \"color\":\"#ffff00\" },"
	echo "${line/[/$dataCACHED}" || exit 1
done | while :
do	
	read line
	USED=$(free -m|awk {'print $3'}| tail -n +2| head -n +1)
	dataFREE="[{ \"full_text\": \"usedMem: $USED MiB\", \"color\":\"#ffff00\" },"
	echo "${line/[/$dataFREE}" || exit 1
done | while :
do	
	read line
	HOST=$(hostname -f)
	dataIP="[{ \"full_text\": \"hostname: $HOST\", \"color\":\"#FF0000\" },"
	echo "${line/[/$dataIP}" || exit 1
done