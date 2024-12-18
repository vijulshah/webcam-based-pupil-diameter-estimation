#!/bin/bash

NOW=$( date '+%F-%H-%M-%S' )
JOB_NAME="ResNet18-inference-bicubic_x2-left-eyes"
PARTITION="batch"
NODES=1
NTASKS=1
CPUS_PER_TASK=2
GPUS_PER_TASK=1
MEM=32G

srun -K\
    --job-name=$JOB_NAME \
    --partition=$PARTITION \
    --nodes=$NODES \
    --ntasks=$NTASKS \
    --cpus-per-task=$CPUS_PER_TASK \
    --gpus-per-task=$GPUS_PER_TASK \
    --gpu-bind=none \
    --mem=$MEM \
    --container-image=/netscratch/$USER/webcam-based-pupil-diameter-estimation/scripts/pip_dependencies.sqsh \
    --container-mounts=/netscratch/$USER:/netscratch/$USER,/ds:/ds,/ds-sds:/ds-sds,"`pwd`":"`pwd`" \
    --container-workdir="`pwd`" \
    --time=12:00:00 \
    --output="./logs/${NOW}-${JOB_NAME}.log" \
    python ./webcam-based-pupil-diameter-estimation/inference/predict.py \
        --config_file="./webcam-based-pupil-diameter-estimation/configs/predict.yml" 