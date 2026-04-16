#!/bin/bash
#SBATC  --job-name=test_run_trajdeleter_001
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=08:00:00
#SBATCH --gres=gpu:1
#SBATCH --output=logs/%x/%j.out
#SBATCH --error=logs/%x/%j.err
#SBATCH --mail-105350111@student.swin.edu.au
#SBATCH --mail-type=ALL

module load apptainer

apptainer exec --nv --writable-tmpfs --fakeroot \
  contains/image.sif \
  bash -lc '
    cd unlearning
    python mujoco_trajdeleter_shortened.py --dataset hopper-medium-expert-v0 --seed 42 --gpu 0 --unlearning_rate 0.11 --model ./Fully_trained/hopper-medium-expert-v0/CQL/params.json
    --model_params ./Fully_trained/hopper-medium-expert-v0/CQL/model.pt --number_of_unlearning 0.11
  '
# This script handles unlearning for one model and one dataset, manually.
# This isn't particularly efficient, this is just to gauge how many jobs must be run simultaneously to do all the basleines in one shot to massively cut back on time.