#!/bin/bash

source hyperparameters.txt

python $lm_dir/main.py \
    --test \
    --data_dir $1 \
    --model_file $2 \
    --vocab_file $3 \
    --testfname $4 \
    --words
#    --cuda \
    # replace the lines above with these to test multitask model
    # --save $model_dir/lstm_multi.pt
    # --save_lm_data $model_dir/lstm_multi.bin 
