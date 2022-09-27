sudo apt install -y libopenblas-base
sudo apt install -y gfortran libopenmpi-dev liblapack-dev libatlas-base-dev
sudo apt install -y libgeos-dev
sudo apt-get install libgeos-c1v5

### Pip installation
pip3 install Cython==0.29.28
pip3 install 'https://github.com/jetson-nano-wheels/python3.6-numpy-1.19.4/releases/download/v0.0.1/numpy-1.19.4-cp36-cp36m-linux_aarch64.whl'
pip3 install 'https://github.com/jetson-nano-wheels/python3.6-scipy-1.5.4/releases/download/v0.0.1/scipy-1.5.4-cp36-cp36m-linux_aarch64.whl'
pip3 install hydra-core==1.1.1
pip3 install pandas==0.22.0
pip3 install Shapely==1.6.4
pip3 install tqdm==4.63.0
pip3 install getmac