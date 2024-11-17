

 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks multiple-cpp \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_cpp.json \
  --mask 'mask'


 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks multiple-go \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_go.json \
  --mask 'mask'

 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks multiple-java \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_java.json \
  --mask 'mask'

 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks humaneval \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_py.json \
  --mask 'mask'

 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks multiple-js \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_js.json \
  --mask 'mask'
  



 accelerate launch --main_process_port 29502 --num_processes=1  main.py \
  --model /root/autodl-tmp/models/deepseek-ai/deepseek-coder-6.7b-base \
  --tasks multiple-php \
  --max_new_tokens 512 \
  --temperature 0.0 \
  --batch_size 1 \
  --precision bf16 \
  --allow_code_execution \
  --do_sample=False \
  --save_generations \
  --save_generations_path ./multiple/gen_php.json \
  --mask 'mask'



