#!/bin/bash
#SBATCH --job-name=opentensor   # Job name
#SBATCH --output=test_heads_inter_channel.log       # Standard output and error log
#SBATCH --error=err_heads_inter_channel.log         # Error log
#SBATCH --ntasks=1              # Run a single task
#SBATCH --cpus-per-task=1       # Number of CPU cores per task
#SBATCH --mem=32G               # Job memory request
#SBATCH --gres=gpu:1            # Request one gpu
#SBATCH --time=06:00:00         # Time limit hrs:min:sec (adjust as needed)
#SBATCH --partition=normal.q    # Partition name

eval "$(conda shell.bash hook)"
conda activate open_tensor
srun python -u /home/etnih/MatrixMul/OpenTensor/main.py --mode train --config /home/etnih/MatrixMul/OpenTensor/config/S_4_inter_channel.yaml
