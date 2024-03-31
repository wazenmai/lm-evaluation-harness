accelerate launch \
    --num_processes=1 \
    --mixed_precision=bf16 \
    --ipex \
    -m lm_eval --model hf \
    --model_args pretrained=EleutherAI/pythia-14m,dtype=bfloat16,parallelize=True \
    --tasks mmlu --batch_size 16 |& tee log1