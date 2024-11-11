#!/bin/bash

# Define the base command
base_command="python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file='./webcam-based-pupil-diameter-estimation/configs/train.yml' \
  --data_path='data/EyeDentify/Wo_SR/eyes/right_eyes' \
  --selected_target='right_pupil' \
  --registered_model_name='ResNet18'"

# Loop through fold1 to fold5
for fold in {1..5}; do
  # Construct the full command with the current fold
  full_command="$base_command --split_fold='fold$fold'"
  
  # Execute the command
  echo "Running: $full_command"
  $full_command
done
