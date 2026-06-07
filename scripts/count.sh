#!/bin/bash
count=0
count_dir=0
for file in "$1"/*
do
	if [ -f "$file" ];then
		((count++))
	fi
	if [ -d "$file" ]; then
		((count_dir++))
	fi
done
echo "count of files: $count"
echo "count of directories: $count_dir"
