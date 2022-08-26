#!/bin/bash


#MIT License

#Copyright (c) 2022 Joshua Kimsey


##### CONDA ENVIRONMENT CREATION AND ACTIVATION #####

# Create The Initial Conda Environment
# THIS WILL GENERATE AN ERROR IF AN ENVIRONMENT ALREADY EXISTS, THIS SHOULD NOT BE AN ISSUE.
conda env create -f environment.yaml

# Activate The Conda Environment
conda activate ldo


##### PYTHON HANDLING #####

#Check to see if model exists in the correct location with the correct name, exit if it does not.

FILE=./models/ldm/stable-diffusion-v1/model.ckpt
if test -f "$FILE"; then
    python scripts/relauncher.py
else
    echo "Your model file does not exist! Place it in 'models\ldm\stable-diffusion-v1' with the name 'model.ckpt'."
fi