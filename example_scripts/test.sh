#!/bin/bash

source hyperparameters.txt

if [[ $# -eq 5 ]]; then
    # use cuda
    python $lm_dir/main.py \
    --test \
    --data_dir $1 \
    --model_file $2 \
    --vocab_file $3 \
    --testfname $4 \
    --words --cuda
else
    # use cpu
    python $lm_dir/main.py \
    --test \
    --data_dir $1 \
    --model_file $2 \
    --vocab_file $3 \
    --testfname $4 \
    --words
fi
