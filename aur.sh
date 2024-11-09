yay -S Python38
Python3.8 -m pip install pipx
pipx install bcml==3.10.4 --preinstall cython<3 --preinstall wheel --python Python3.8
pipx ensurepath