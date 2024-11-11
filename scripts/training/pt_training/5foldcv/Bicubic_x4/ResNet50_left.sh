#!/bin/bash

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/Wo_SR/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold1" \
  --img_size 64 128

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/Wo_SR/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold2" \
  --img_size 64 128

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/Wo_SR/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold3" \
  --img_size 64 128

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/Wo_SR/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold4" \
  --img_size 64 128

python ./webcam-based-pupil-diameter-estimation/training/train.py \
  --config_file="./webcam-based-pupil-diameter-estimation/configs/train.yml" \
  --data_path="data/EyeDentify/Wo_SR/eyes/left_eyes" \
  --selected_target="left_pupil" \
  --registered_model_name="ResNet50" \
  --split_fold="fold5" \
  --img_size 64 128