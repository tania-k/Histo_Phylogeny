#!/bin/bash
#SBATCH --nodes 1 --ntasks 16 --mem 240G --out logs/IQTree.%A.pep.log --time 7-00:00:00
CPU=24
module load iqtree/2.2.2.7

IN=phyling_align_top50/Top50_multi.mfa
iqtree2 -q combined_top50.partition -alrt 1000 -bb 1000 -s $IN -nt AUTO
