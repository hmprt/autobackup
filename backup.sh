#!/bin/bash

# Iterates through a list of paths to git repos. For each one, adds 
# any oustanding changes, makes an automated commit and pushes them to
# remote
home=$(pwd)
for line in $(cat $1); do
	cd $line
	echo Checking $line
	if [[ -n $(git status -s) ]];
	then
		# handling untracked and modified files
		git add *
		for untracked in $(git status -s | 
				grep \?\? | 
				awk -F " " '{print $2}'
				); 
			do
				git add $untracked
			done
		
		# handling deleted files
		for deleted in $(git status -s |
			grep D | 
			awk -F "D " '{print $2}'
			); 
		do
			git rm -rf $deleted
		done
	git commit -m "Automated update at $(date)"
	git push
	cd $home
	fi
done
