# lm_eval --model hf \
#     --model_args pretrained=$PRUNED_MODEL_PATH,dtype=bfloat16 \
#     --tasks mmlu --device cuda --batch_size 16 |& tee log1
# parallelize=True
# EleutherAI/pythia-14m
# "/home/wazenmai/Warehouse/MoE/models/mixtral-8x7B_layerwise_pruning_r6_c4_128_20240330-160959"

lm_eval --model hf --model_args pretrained=/models/pythia-14m,dtype=bfloat16 --tasks mmlu --device cuda --batch_size 16 --output_path ./results --log_samples --use_cache ./sqlite_cache |& tee log

ls ./cache
ls

docker cp lm-eval:./results /home/wazenmai/MoE_experiments/lm-evaluation-harness/results
docker cp lm-eval:./sqlite_cache /home/wazenmai/MoE_experiments/lm-evaluation-harness/sqlite_cache
docker cp lm-eval:log /home/wazenmai/MoE_experiments/lm-evaluation-harness/log

# docker cp lm-eval:./results /home/wazenmai/MoE_experiment/lm-evaluation-harness/results
# docker cp lm-eval:./sqlite_cache /home/wazenmai/MoE_experiments/lm-evaluation-harness/sqlite_cache