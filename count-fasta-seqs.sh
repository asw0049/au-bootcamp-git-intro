#!/bin/sh

for file in "$@"
do

    NUM=`grep '>' $file | wc -l`
    filename=`basename $file`

    echo $NUM $filename
done

## Loop takes the files specified in the command, and sets 2 new variables
## to create the desired output. NUM used the grep command to figure out how
## many sequences are in the file, and pipes the output to wc to count the 
## actual lines to get the number. filename takes the base of the $PATH to the
## file to distinguish which file the count came from. By echoing the 2 
## variables, you can have the sequence count and filename right next to each
## other. Once the 2 files have been counted, the loop is done and can move
## on to the next part of the script. 

TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL

## In order to see the total sequences for each file, we created a new variable
## to take each number from the respective file and add them together for a 
## total count. That number is then echo'ed to the standard out.

## Run "sh count-fasta-seqs.sh example-seqs1.fasta example-seqs2.fasta" to 
## ensure the file is working.

## Once the file works, run "sh run_tests.sh" to complete the exercise. If it 
## works, you will se an "All tests passed!" message.
