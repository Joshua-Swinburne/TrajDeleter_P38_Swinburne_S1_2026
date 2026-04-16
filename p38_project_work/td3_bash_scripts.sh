# Not finished and likely wrong.


#!/bin/bash
#SBATC  --job-name=
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
    python mujoco_ --dataset _____ --algo _______ --model ./params/________.json
  '

#!/bin/bash
#SBATC  --job-name=
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

apptainer exec --nv --writable-tmpfs --fakeroot \
  contains/image.sif \
  bash -lc '
    cd unlearning
    python ______ --dataset _____ --algo _______ --model ./params/________.json
  '

##!/bin/bash
#SBATC  --job-name=
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

apptainer exec --nv --writable-tmpfs --fakeroot \
  contains/image.sif \
  bash -lc '
    cd unlearning
    python ______ --dataset _____ --algo _______ --model ./params/________.json
  '
#!/bin/bash
#SBATC  --job-name=
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

apptainer exec --nv --writable-tmpfs --fakeroot \
  contains/image.sif \
  bash -lc '
    cd unlearning
    python ______ --dataset _____ --algo _______ --model ./params/________.json
  '