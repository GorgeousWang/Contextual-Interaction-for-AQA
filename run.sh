#!/usr/bin/env bash
export RECLOR_DIR='/arg_30k'
export TASK_NAME=reclor
export MODEL_DIR=roberta-base
export MODEL_TYPE=DAGN
export GRAPH_VERSION=4
export DATA_PROCESSING_VERSION=32
export MODEL_VERSION=2132
export GNN_VERSION=GCN_reversededges_double
export SAVE_DIR=test

CUDA_VISIBLE_DEVICES=1 python run_assesment.py \
    --task_name $TASK_NAME \
    --model_type $MODEL_TYPE \
    --model_name_or_path $MODEL_DIR \
    --init_weights \
    --do_train \
    --do_eval \
    --do_predict \
    --data_dir $RECLOR_DIR \
    --graph_building_block_version $GRAPH_VERSION \
    --data_processing_version $DATA_PROCESSING_VERSION \
    --model_version $MODEL_VERSION \
    --merge_type 4 \
    --gnn_version $GNN_VERSION \
    --use_gcn \
    --use_pool \
    --max_seq_length 128\
    --per_device_eval_batch_size 32\
    --per_device_train_batch_size 32\
    --gradient_accumulation_steps 4 \
    --roberta_lr 2e-5\
    --proj_lr 2e-5\
    --num_train_epochs 5\
    --output_dir Checkpoints/$TASK_NAME/${SAVE_DIR} \
    --fp16 \
    --logging_steps 200 \
    --save_steps 400 \
    --adam_epsilon 1e-6 \
    --weight_decay 0.01
