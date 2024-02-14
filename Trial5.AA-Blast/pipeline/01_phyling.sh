#!/usr/bin/bash -l
#SBATCH --ntasks 24 --mem 64G --time 72:00:00 -p short -N 1 --out logs/phyling_align_PEP.log

conda activate phyling

phyling align -I pep/ -m HMM/eurotiomycetes_odb10/hmms -t 4 -o phyling_align
