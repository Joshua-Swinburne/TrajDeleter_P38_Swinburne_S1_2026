# Run this to start an interactive session on a GPU node
# Remember to pre-download the dataset with example_download_dataset.sh before running this, since GPU nodes don't have internet access.

# Request an interactive session on a GPU node with 8 CPUs, 32GB of RAM, and a 2 hour time limit.
srun --partition=gpu --gres=gpu:1 --cpus-per-task=8 --mem=32G --time=02:00:00 --pty bash

module load apptainer

# mujoco_py writes/compiles artifacts into mujoco_py/generated on first import.
# Use a writable tmpfs overlay; add --fakeroot so it has permission to write there.
apptainer exec --nv --writable-tmpfs --fakeroot \
  containers/image.sif \
  bash -lc '
    cd unlearning
    python mujoco_fully_training.py --dataset hopper-medium-expert-v0 --algo IQL --model ./params/iql_hopper_em_params.json
  '
