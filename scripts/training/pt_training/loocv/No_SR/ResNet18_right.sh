#!/bin/bash

base_command="python ./webcam-based-pupil-diameter-estimation/training/pt_training/pt_train.py \
  --config_file=./webcam-based-pupil-diameter-estimation/configs/pt_train.yml \
  --data_path=data/EyeDentify/Wo_SR/eyes/right_eyes \
  --selected_targets right_pupil \
  --registered_model_name=ResNet18"

for participant in {1..51}; do
  full_command="$base_command --left_out_participants_for_val $participant --left_out_participants_for_test $participant"

  echo "Running: $full_command"
  $full_command
done
