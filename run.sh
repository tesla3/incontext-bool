# baselining
# now set it as default
# Adam atan2 (decoupled_wd did not work)
<<\c
python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64  \
-gpu 1 \
-optimizer=adam_atan2  -learning_rate 0.001
c

#
<<\c
#testing decoupled_wd (does not converge)
python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 \
-gpu 2 \
-optimizer=adam_atan2 -learning_rate 0.001  
c

<<\c
#testing lower weight decay to see if speeds up convergence (it seems converges slower than 0.1)
python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 \
-gpu 2 \
-optimizer=adam_atan2 -learning_rate 0.001  -weight_decay 0.001
c

#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.01  -weight_decay 0.01 -optimizer=adam_atan2 -gpu 2
#
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.0001 -optimizer=adamw -gpu 2
#
# adopt_atan2 
# never worked: tried weight_decay: 0, 0.1; cautious_factor: 0.,1.0, learning rate 0.001 or 0.0001
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.001 -optimizer adopt_atan2 -weight_decay 0 -gpu 2


# push lr higher
# AdamW
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.01 -gpu 1

# Adam atan2 
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.01 -adam_atan2 -gpu 2

# push lr even higher
# Adam atan2 
#python -m src.train -project in-context-learning -name test -family san -model_name gpt2 -task conjunction -data boolean -train_steps 15000 -n_dims 28 -n_embd 256 -n_layer 12 -n_head 8 -batch_size 64 -learning_rate 0.1 -adam_atan2 -gpu 2


