#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1   # number of CPUs for this task
#SBATCH -J "pipe"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o pipe-slurm.%N.%j.out # STDOUT
#SBATCH -e pipe-slurm.%N.%j.err # STDERR

#SBATCH -J "rse"   # job name
#SBATCH -o rpllfp-slurm.%N.%j.out # STDOUT
#SBATCH -e rpllfp-slurm.%N.%j.err # STDERR


# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
pyh.RPLLFP(saveLevel=1); \
print(time.localtime());"


