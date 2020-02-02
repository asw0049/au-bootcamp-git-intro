#!/bin/sh

#echo "$@"


for file in "$@"
do

    NUM=`grep '>' $file | wc -l`
    filename=`basename $file`

    echo $NUM $filename
done

TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL
