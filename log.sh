#! /bin/zsh
dir="var/log/exercice/recent_logs"

# Check if dir exist. If it doesn't existe, create path
if [ -d "$dir" ]; then
	echo "File already exist"
else
	mkdir -p $dir
	echo "Create dir for logs"
fi

# Create n file tmp from /dev/random
for (( i=0; i<$1; i++ ))
do
	log=$(head -c10 /dev/random)
	tmpfile=$(mktemp ./var/log/exercice/recent_logs/XXXXXXXXXX)
	echo $log >> $tmpfile
done
