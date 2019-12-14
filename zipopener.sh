#!/bin/bash

if [ -z $1 ]
then
echo "Usage zipopenner.sh example.zip"
fi
path=$1".out"

if mkdir $path; then
echo "Hello my friend ">/dev/null
else
rm -rf $path
fi
unzip $1 -d $path"/"
while true
do
file=$(ls $path/)
echo "file $file"
if unzip $path"/"$file -d $path/; then
rm $path"/"$file
else 
break
fi


done
echo "Procces Complate"
