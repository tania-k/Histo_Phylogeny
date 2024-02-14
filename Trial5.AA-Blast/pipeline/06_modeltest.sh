#!/usr/bin/bash -l
#SBATCH -p general --mem 120gb --out modeltest.log --time 48:00:00

conda activate modeltest-ng

modeltest-ng -d aa -i phyling_align_top50/Top50_multi.mfa -o combined_top50.modeltest -p 24 -q combined_top50.partition
