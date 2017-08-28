#!/bin/bash

read -p "Choose the options to use:
	[1] Init a project on github.
	[2] Push files to github.
	" options

case $options in
    1 ) read -p "What is repository name: " name
	echo "# ${name}" >> README.md
	git init
	git add .
	git commit -m "first commit"
	git remote add origin https://github.com/a110605/$name.git
	git push -u origin master
	break;;
    * ) echo "Please choose options 1 or 2";
        exit;
    	break ;;
esac
