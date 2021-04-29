# build virtual environment
conda create --name=pytorch_x86
conda activate pytorch_x86
conda install -y python=3.7

# install torch
# pip install torch torchvision
conda install pytorch torchvision torchaudio -y -c pytorch

# transformers
pip install transformers tqdm boto3 requests regex -q

# jupyter
pip install jupyter
sudo python -m ipykernel install --name=pytorch_x86

# vim kernel.json of jupyter
# The prefixed arch -x86_64 is for Rosetta 2 emulation of the command.
sudo vim /usr/local/share/jupyter/kernels/pytorch_x86/kernel.json

# start jupyter notebook
jupyter notebook --port 8888


# close env
conda deactivate

# delete env
conda env remove -n pytorch_x86