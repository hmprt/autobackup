#!/bin/bash

# Iterates through a list of paths to git repos. For each one, adds 
# any oustanding changes, makes an automated commit and pushes them to
# remote
set -e
for line in $(cat backup_paths.txt); do
	cd $line
	git pull --no-edit
	if [[ -n $(git status -s) ]];
	then
		git add *
		git commit -m "Automated update at $(date)"
		git push
	fi 
done
