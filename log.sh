#! /bin/zsh

for (( i=0; i<$1; i++ ))
do
	log=$(head -c10 /dev/random)
	tmpfile=$(mktemp ./var/log/exercice/recent_logs/XXXXXXXXXX)
	echo $log >> $tmpfile
done
