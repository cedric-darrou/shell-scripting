#! /bin/bash

dir="var/log/exercice/archives"
# Check if dir exist. If it doesn't existe, create path
if [ -d "$dir" ]; then
	echo "File already exist"
else
	mkdir -p $dir
	echo "Create dir for logs"
fi

# Check nb of inodes
usage=$(df -i / | grep "% /" | tail -c 6 | tr -d "% /" )
echo $usage
if ((100 - $usage < 80)) 
then
	tar -cvf var/log/exercice/archives/$RANDOM.tar.gz var/log/exercice/recent_logs
	wall "HODOOR \!\!\!"
	rm var/log/exercice/recent_logs/*
fi
