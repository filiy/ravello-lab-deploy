#!/bin/bash
read -p 'Number of Apps to deploy: ' numvar
read -p 'Name of blueprint : ' blueprintvar
echo "cd apps" > deploy.file
for x in $(seq 1 $numvar)
do
	echo "new blueprint="$blueprintvar "name=-"$x" region=@auto" "desc=student"$x"-application" >> deploy.file
done 

ravshello -A -k "student" -s deploy.file