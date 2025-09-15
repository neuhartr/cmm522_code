#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:03:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

set -e
grep -v 'noncoding' gene_results.txt.1 > gene_results_coding.txt
sed -i 's/0/3/g' gene_results_coding.txt

echo "Boom"