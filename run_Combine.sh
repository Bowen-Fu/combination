#!/bin/bash

#SBATCH --mail-user=B.Fu@soton.ac.uk

#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --mem=40G
#SBATCH --time=1:00:00

module load mathematica/13.0

cd $HOME/batch_programs

math -run < CombineFiles.m

