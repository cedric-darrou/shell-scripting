#! /bin/zsh

for (( i=0; i<$1; i++ ))
do
	log=$(head -c10 /dev/random)
	echo $log >> $$
done
