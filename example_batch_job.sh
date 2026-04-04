#!/bin/bash
#SBATCH --job-name=iql_hopper_em
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=08:00:00
#SBATCH --gres=gpu:1
#SBATCH --output=logs/%x/%j.out
#SBATCH --error=logs/%x/%j.err
#SBATCH --mail-user=your-student-email
#SBATCH --mail-type=ALL

module load apptainer

apptainer exec --nv --writable-tmpfs --fakeroot \
  containers/image.sif \
  bash -lc '
    cd unlearning
    python mujoco_fully_training.py --dataset hopper-medium-expert-v0 --algo IQL --model ./params/iql_hopper_em_params.json
  '
