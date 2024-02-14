#!/usr/bin/bash -l
#SBATCH -c 2 -N 1 -n 1 --mem 4gb --out logs/tree_build.%a.log --time 48:00:00

module load iqtree/2.2.2.7
N=${SLURM_ARRAY_TASK_ID}

if [ -z $N ]; then
    N=$1
    if [ -z $N ]; then
        echo "Need an array id or cmdline val for the job"
        exit
    fi
fi
IN=$(ls phyling_align/*.cds.mfa | sed -n ${N}p)
iqtree2 -s $IN -gz -B 1000 -alrt 1000 -nt 2
