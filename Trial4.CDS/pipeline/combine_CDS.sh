#!/usr/bin/bash -l
conda activate phyling
 # make sure biopython env is available for your python
INDIR=phyling_align_top50
EXT=cds.mfa
 if [ ! -f Top50.expected_prefixes.lst ]; then
	 cat $INDIR/*.$EXT | grep ">" | awk '{print $1}'  | sort | uniq > Top50.expected_prefixes.lst
 fi
./pipeline/combine_multiseq_aln.py  --moltype DNA -p combined_top50.partition --expected Top50.expected_prefixes.lst  --ext $EXT -d $INDIR -o phyling_align_top50/Top50_multi.mfa
