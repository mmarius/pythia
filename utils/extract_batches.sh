#!/usr/bin/env bash

PROJECT_DIR=/home/nlp/users/mmosba/projects/pythia

MERGED_FOLDER=/mnt/research/scratch/users/mmosba/pythia-data/merged/document
OUTPUT_DIR=/mnt/research/scratch/users/mmosba/pythia-data/batches

START_ITER=$1
END_ITER=$2 # including

python3 $PROJECT_DIR/utils/batch_viewer.py \
  --start_iteration $START_ITER \
  --end_iteration $END_ITER \
  --load_path $MERGED_FOLDER \
  --save_path $OUTPUT_DIR \
  --conf_dir $PROJECT_DIR/utils/dummy_config.yml
 