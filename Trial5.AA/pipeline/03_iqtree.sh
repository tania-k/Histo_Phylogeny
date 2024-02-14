#!/bin/bash
#SBATCH --nodes 1 --ntasks 16 --mem 240G --out logs/IQTree.%A.pep.log --time 7-00:00:00
CPU=24
module load iqtree/2.2.2.7

IN=phyling_tree/concat_alignments.mfa
iqtree2 -alrt 1000 -bb 1000 -s $IN -nt AUTO
