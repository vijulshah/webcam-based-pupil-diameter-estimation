#!/bin/bash

NOW=$( date '+%F-%H-%M-%S' )
JOB_NAME="ConvNet-no-sr-left-iris-fold1"
PARTITION="batch"
NODES=1
NTASKS=1
CPUS_PER_TASK=2
GPUS_PER_TASK=1
MEM=32G

export LOGLEVEL=INFO

srun -K\
    --job-name=$JOB_NAME \
    --partition=$PARTITION \
    --nodes=$NODES \
    --ntasks-per-node=$NTASKS \
    --cpus-per-task=$CPUS_PER_TASK \
    --gpus-per-task=$GPUS_PER_TASK \
    --gpu-bind=none \
    --mem=$MEM \
    --container-image=/netscratch/$USER/webcam-based-pupil-diameter-estimation/scripts/pip_dependencies_pl.sqsh \
    --container-mounts=/netscratch/$USER:/netscratch/$USER,/ds:/ds,/ds-sds:/ds-sds,"`pwd`":"`pwd`" \
    --container-workdir="`pwd`" \
    --time=01:00:00 \
    --output="./logs/${NOW}-${JOB_NAME}-nodes_${NODES}-tasks_${NTASKS}-cpus_${CPUS_PER_TASK}-gpus_${GPUS_PER_TASK}.log" \
    python ./webcam-based-pupil-diameter-estimation/training/pl_training/pl_train.py \
        --config_file="./webcam-based-pupil-diameter-estimation/configs/pl_train.yml" \
