# CUDA_VISIBLE_DEVICES=0,1,2,3 accelerate launch --main_process_port 29502 --num_processes=4  main.py \
#   --model /data1/chh/models/meta-llama/Meta-Llama-3-8B-Instruct \
#   --tasks ds1000-all-completion \
#   --n_samples 1 \
#   --max_length_generation 512 \
#   --temperature 0.1 \
#   --do_sample True \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --generation_only \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/ds1000/ \
#   --my_mode 0 \
#   --split_file /home/chh/repos/my_ctg/instructions/ds1000/ds1000_2steps_llama.json 

# CUDA_VISIBLE_DEVICES=0 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
#   --model /data1/chh/models/meta-llama/Meta-Llama-3-8B-Instruct \
#   --tasks humaneval \
#   --n_samples 10 \
#   --max_new_tokens 512 \
#   --temperature 0.1 \
#   --do_sample True \
#   --batch_size 1 \
#   --precision bf16 \
#   --allow_code_execution \
#   --save_generations \
#   --save_generations_path /home/chh/repos/my_ctg/results/humaneval/ \
#   --my_mode 0 \
#   --split_file /home/chh/repos/my_ctg/instructions/humaneval/humaneval_2steps_llama_2.json


CUDA_VISIBLE_DEVICES=1 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /data1/chh/models/meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks instruct-humaneval \
  --instruction_tokens '<|start_header_id|>user<|end_header_id|>,<|eot_id|>,<|start_header_id|>assistant<|end_header_id|>' \
  --n_samples 10 \
  --max_new_tokens 512 \
  --temperature 0.1 \
  --do_sample True \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --save_generations \
  --save_generations_path /home/chh/repos/my_ctg/results/humaneval/ \
  --my_mode 0 \
  --split_file /home/chh/repos/my_ctg/instructions/humaneval/humaneval_2steps_llama_2.json \
  --insert_layers [20] \
  --normalize \
  --operator 'linear_comb' \
  --coef 0.5 \
  --split_file /home/chh/repos/my_ctg/instructions/ifeval/ifeval_2steps_llama_2.json

