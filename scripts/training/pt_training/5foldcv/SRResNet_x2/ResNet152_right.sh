#!/bin/bash

base_command="python ./webcam-based-pupil-diameter-estimation/training/pt_training/pt_train.py \
  --config_file=./webcam-based-pupil-diameter-estimation/configs/pt_train.yml \
  --data_path=data/EyeDentify/W_SR/SRResNet_x2/eyes/right_eyes \
  --selected_targets right_pupil \
  --exp_name=resnet152_right_eyes_srresnet_x2 \
  --registered_model_name=ResNet152"

for fold in {1..5}; do
  full_command="$base_command --split_fold='fold$fold'"
  
  echo "Running: $full_command"
  $full_command
done
