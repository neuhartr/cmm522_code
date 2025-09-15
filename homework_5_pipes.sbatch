#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:03:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

set -e
touch gene_results2.txt | grep -v "noncoding" gene_results.txt.1 | sed 's/0/4/g' > gene_results2.txt

echo "Done"