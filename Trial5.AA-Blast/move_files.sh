#!/bin/bash -l

filename=$1
while read line; do # reading each line

cp phyling_align/$line.aa.mfa phyling_align_top50/

done < $filename
