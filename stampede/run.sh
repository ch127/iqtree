#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -p normal
#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -J iqtree
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

module load tacc-singularity

IMG="/work/05066/imicrobe/singularity/iqtree-1.6.12.img"

if [[ ! -e "$IMG" ]]; then
    echo "Missing Singularity image \"$IMG\""
    exit 1
fi

singularity exec $IMG iqtree -s Jana.131_taxa.JGI_1086.fasaln

echo "Comments to kyclark@email.arizona.edu"
