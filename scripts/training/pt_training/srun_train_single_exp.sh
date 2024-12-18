#!/bin/bash

NOW=$( date '+%F-%H-%M-%S' )
JOB_NAME="ResNet18-left"
PARTITION="RTXA6000"
NODES=1
NTASKS=2
CPUS_PER_TASK=2
GPUS_PER_TASK=1
MEM=32G

export LOGLEVEL=INFO

srun -K\
    --job-name=$JOB_NAME \
    --partition=$PARTITION \
    --nodes=$NODES \
    --ntasks=$NTASKS \
    --cpus-per-task=$CPUS_PER_TASK \
    --gpus-per-task=$GPUS_PER_TASK \
    --gpu-bind=none \
    --mem=$MEM \
    --container-image=/netscratch/$USER/webcam-based-pupil-diameter-estimation/scripts/pip_dependencies_pl.sqsh \
    --container-mounts=/netscratch/$USER:/netscratch/$USER,/ds:/ds,/ds-sds:/ds-sds,"`pwd`":"`pwd`" \
    --container-workdir="`pwd`" \
    --time=10:00:00 \
    --output="./logs/${NOW}-${JOB_NAME}-nodes_${NODES}-tasks_${NTASKS}-cpus_${CPUS_PER_TASK}-gpus_${GPUS_PER_TASK}.log" \
    python ./webcam-based-pupil-diameter-estimation/training/pt_training/pt_train.py \
        --config_file="./webcam-based-pupil-diameter-estimation/configs/pt_train.yml" \
        
# --task-prolog="`pwd`/install.sh" \
# --container-image=/netscratch/enroot/nvcr.io_nvidia_pytorch_22.07-py3.sqsh # System available images
# --container-save : to save an image after installing dependencies in an existing image, use like this:
# --container-image=/netscratch/$USER/project_folder/scripts/pip_dependencies.sqsh \

# To see available images:
# cd /netscratch/enroot/
# ls nvcr.io_nvidia_pytorch_* -l

# Run in interractive mode to use debugging:
# --pty /bin/bash \

# https://slurm.schedmd.com/sbatch.html

# Interactive Mode: https://lightning.ai/docs/pytorch/stable/clouds/cluster_advanced.html#interactive-mode