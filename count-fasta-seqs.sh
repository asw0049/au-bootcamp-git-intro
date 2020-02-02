#!/bin/sh

#echo "$@"

for file in "$@"
do

    NUM=`grep '>' $file | wc -1'
    filename=`basename $file`

    echo $num $filename
done

TOTAL=`grep '>' $@ | wc -l`
echo $total
