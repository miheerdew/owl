#!/bin/bash

source /home/toshc/anaconda3/bin/activate
conda activate owl

seed=$(($LSB_JOBINDEX + 100))

python simulations/gmm_simulation.py --seed $seed --corr_type 'max'
python simulations/gmm_simulation.py --seed $seed --corr_type 'rand'