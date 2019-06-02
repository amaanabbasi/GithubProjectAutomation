#!/bin/bash

echo "Setting Up," $1
python3 create.py $1
echo "--------Repository Created ---------"
cd my-projects/
echo " "
echo "Setting up git locally"
mkdir $1
cd $1
git init .
git remote add origin https://github.com/yourusername/$1.git
touch README.md
git add .
git commit -m "Initial commit"
git push -u origin master
echo " "
echo "--------Finished---------"
echo " "
echo "Launching Vs code"
code . 
