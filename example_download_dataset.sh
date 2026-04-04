# Run this to download the dataset with the download_dataset.py script,
# which will save it to the default location of ~/.d4rl/datasets.

# Internet is disabled on GPU nodes, so don't request a GPU for this job.

module load apptainer

apptainer exec --nv --writable-tmpfs --fakeroot \
  containers/image.sif \
  bash -lc '
    python download_dataset.py --dataset hopper-medium-expert-v0
  '
