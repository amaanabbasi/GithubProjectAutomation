#!/bin/bash
# $1 -> Contains project name.
# $2 -> Contains environment to put in .gitignore  

echo "Setting Up," $1
python3 create.py $1 $2 
echo "--------Repository Created ---------"

cd my-projects/
echo " "
echo "-------Setting up git locally------"

mkdir $1
cd $1 
git init .
git remote add origin https://github.com/username/$1.git
touch README.md
touch .gitignore
# Storing repository's path
VAR1=$(pwd)
echo " "

echo "-------Initializing .gitignore--------"
# Going back to the root directory,
# to fetch from https://www.gitignore.io/api/
# and write it to .gitignore
cd ~   
python3 create-gitignore.py $VAR1 $2
cd "$VAR1"  
git add .
git commit -m "Initial commit"
git push -u origin master
echo " "
# echo "--------Finished---------"

echo " "
echo "Launching Vs code"
code . 


