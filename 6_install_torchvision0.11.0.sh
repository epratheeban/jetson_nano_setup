sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
sudo pip3 install -U pillow
# install gdown to download from Google drive, if not done yet
sudo -H pip3 install gdown
# download TorchVision 0.11.0
gdown https://drive.google.com/uc?id=1C7y6VSIBkmL2RQnVy8xF9cAnrrpJiJ-K
# install TorchVision 0.11.0
sudo -H pip3 install torchvision-0.11.0a0+fa347eb-cp36-cp36m-linux_aarch64.whl
# clean up
rm torchvision-0.11.0a0+fa347eb-cp36-cp36m-linux_aarch64.whl