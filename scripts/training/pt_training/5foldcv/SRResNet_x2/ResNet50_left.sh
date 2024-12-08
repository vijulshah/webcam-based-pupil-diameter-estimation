#!/bin/bash

base_command="python ./webcam-based-pupil-diameter-estimation/training/pt_training/pt_train.py \
  --config_file=./webcam-based-pupil-diameter-estimation/configs/pt_train.yml \
  --data_path=data/EyeDentify/W_SR/SRResNet_x2/eyes/left_eyes \
  --selected_targets left_pupil \
  --exp_name=resnet50_left_eyes_srresnet_x2 \
  --registered_model_name=ResNet50"

for fold in {1..5}; do
  full_command="$base_command --split_fold='fold$fold'"
  
  echo "Running: $full_command"
  $full_command
done