#!/bin/bash

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/W_SR/GFPGAN_x2/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold1"

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/W_SR/GFPGAN_x2/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold2"

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/W_SR/GFPGAN_x2/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold3"

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/W_SR/GFPGAN_x2/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold4"

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/W_SR/GFPGAN_x2/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold5"