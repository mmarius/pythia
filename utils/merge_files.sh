#!/usr/bin/env bash

PROJECT_DIR=/home/nlp/users/mmosba/projects/pythia

INPUT_FILE=/mnt/research/scratch/users/mmosba/pythia-data/datasets--EleutherAI--pile-deduped-pythia-preshuffled/snapshots/4647773ea142ab1ff5694602fa104bbf49088408/document-00000-of-00020.bin
OUTPUT_DIR=/mnt/research/scratch/users/mmosba/pythia-data

python3 $PROJECT_DIR/utils/unshard_memmap.py \
	--input_file $INPUT_FILE \
	--num_shards 21 \
	--output_dir $OUTPUT_DIR
