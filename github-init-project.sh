#!/bin/bash

read -p "Choose the options to use:\n
	[1] Init a project on github.\n
	[2] Push files to github.\n" options
echo "$options"	 
echo "# $1" >> README.md
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/a110605/$1.git
git push -u origin master
