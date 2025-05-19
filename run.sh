# baselining
# AdamW
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.0001 -gpu 1

# Adam atan2 (decoupled_wd did not work)
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.0001 -adam_atan2 -gpu 2

# push lr higher
# AdamW
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.01 -gpu 1

# Adam atan2 
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.01 -adam_atan2 -gpu 2

# push lr even higher
# Adam atan2 
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.1 -adam_atan2 -gpu 2


