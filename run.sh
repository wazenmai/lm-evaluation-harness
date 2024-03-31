lm_eval --model hf \
    --model_args pretrained=$PRUNED_MODEL_PATH,dtype=bfloat16 \
    --tasks mmlu --device cuda --batch_size 16 |& tee log1
# parallelize=True
# EleutherAI/pythia-14m
# "/home/wazenmai/Warehouse/MoE/models/mixtral-8x7B_layerwise_pruning_r6_c4_128_20240330-160959"