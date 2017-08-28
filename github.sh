#!/bin/bash
echo "# scripts" >> README.md
git init
git add $1
git commit -m "first commit"
git remote add origin https://github.com/a110605/scripts.git
git push -u origin master
