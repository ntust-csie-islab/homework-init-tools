#! /bin/bash

git config --global user.email "mark19891107+islab@gmail.com"
git config --global user.name "ntust-csie-islab"

git clone https://github.com/ntust-csie-islab/$1.git
cd $1

git checkout -b gh-pages


echo "<ul>" >> index.html

while read line; do
    mkdir $line
    echo "homework not found!!" >> $line/index.html
    echo "<li><a href="$line">$line</a></li>" >> index.html
done < ../$2

echo "</ul>" >> index.html


git add .
git commit -m 'init'
git push origin gh-pages
