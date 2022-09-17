


#Install basics
sudo apt-get update
sudo apt-get install -y nano
sudo apt-get install -y curl
sudo apt-get install -y python3-pip python3-dev
sudo apt-get install -y python-pip
sudo apt-get install -y python-setuptools
sudo apt-get install -y python3-setuptools
sudo apt-get install -y python3-opencv
sudo apt-get install -y libcanberra-gtk0 libcanberra-gtk-module
sudo -H pip3 install --no-cache-dir jetson-stats


# increase swap 


#jupyter lab installation

sudo apt install nodejs npm
sudo pip3 install jupyter jupyterlab
sudo jupyter labextension install @jupyter-widgets/jupyterlab-manager
sudo jupyter labextension install @jupyterlab/statusbar
jupyter lab --generate-config
jupyter notebook password


