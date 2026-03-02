#!/usr/bin/env bash

#########
# conda
#########
conda install ffmpeg=7.1.1 -c conda-forge -y
conda install conda-forge::nvitop -y

#########
# basic setups
#########

# common requirements
pip install -r requirements.txt --no-cache-dir

# graphics (for headless rendering)
# conda install -c conda-forge glfw glew -y
# conda install -c menpo mesa-libgl-cos6-x86_64 glfw3 osmesa -y
# conda install -c borismarin libx11 -y

#########
# modules setup
#########

# RTX 5090 (cuda 12.8) compatibility 
pip uninstall torch torchvision torchaudio -y 
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128

