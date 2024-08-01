#!/usr/bin/bash -l
#SBATCH --ntasks 24 --mem 120G --time 92:00:00 -p short -N 1 --out logs/phyling_tree_cds.log
ASTRAL_PATH=/nas/longleaf/home/taniak/.conda/envs/funannotate/ASTER/src


conda activate phyling

phyling tree -I phyling_align -t 4 -o phyling_tree -M ft -c
