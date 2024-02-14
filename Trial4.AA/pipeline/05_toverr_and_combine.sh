#!/usr/bin/bash -l
#SBATCH -p general -c 64 --mem 24gb
conda activate phykit
#module load parallel-fastq-dump/0.6.3

CPU=64
DIR=phyling_align

parallel -j $CPU phykit toverr -a {} -t {}.contree \> {}.phykit_toverr ::: $(ls $DIR/*.mfa)
echo -n -e "GENE\tTREENESS_RATIO\ttreeness\tRCV\n" > $DIR.toverr.tsv
for file in $(ls $DIR/*.phykit_toverr)
do
	name=$(basename $file .aa.mfa.phykit_toverr)
	echo -n -e "$name\t"
	cat $file
done >> $DIR.toverr.tsv
