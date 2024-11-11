#!/bin/bash

# Define the base command
base_command="python ./webcam-based-pupil-diameter-estimation/training/pl_training/pl_train.py \
  --config_file=./webcam-based-pupil-diameter-estimation/configs/pl_train.yml \
  --data_path=data/EyeDentify/Wo_SR/eyes/left_eyes \
  --selected_targets left_pupil \
  --registered_model_name=ResNet18 \
  --img_size 32 64"

# Loop through participants 1 to 51
for fold in {1..51}; do
  # Construct the full command with dynamic participant values
  full_command="$base_command --split_fold $fold"
  
  # Execute the command
  echo "Running: $full_command"
  $full_command
done
