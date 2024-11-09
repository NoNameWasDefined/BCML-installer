sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt-get install Python3.8 python3-pipx
pipx install bcml==3.10.4 --preinstall cython<3 --preinstall wheel --python python3.8
pipx ensurepath