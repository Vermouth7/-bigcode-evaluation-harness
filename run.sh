# CUDA_VISIBLE_DEVICES=5 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
#   --tasks multiple-js \
#   --max_new_tokens 512 \
#   --temperature 0.0 \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --do_sample=False \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/multiple/gen_js.json
  
# CUDA_VISIBLE_DEVICES=5 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
#   --tasks multiple-py \
#   --max_new_tokens 512 \
#   --temperature 0.0 \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --do_sample=False \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/multiple/gen_py.json

# CUDA_VISIBLE_DEVICES=5 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
#   --tasks multiple-cpp \
#   --max_new_tokens 512 \
#   --temperature 0.0 \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --do_sample=False \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/multiple/gen_cpp.json

# CUDA_VISIBLE_DEVICES=5 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
#   --tasks multiple-php \
#   --max_new_tokens 512 \
#   --temperature 0.0 \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --do_sample=False \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/multiple/gen_php.json

# CUDA_VISIBLE_DEVICES=5 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
#   --tasks multiple-go \
#   --max_new_tokens 512 \
#   --temperature 0.0 \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --do_sample=False \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/multiple/gen_go.json




docker run -v /home/chh/repos/my_ctg/results/multiple/gen_go_multiple-go.json:/app/generations_go.json:ro -it evaluation-harness-multiple \
    --model /data1/chh/models/deepseek-ai/deepseek-coder-6.7b-base \
    --tasks multiple-go \
    --load_generations_path /app/generations_go.json \
    --allow_code_execution \
    --n_samples 1
