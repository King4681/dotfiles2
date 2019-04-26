#!/bin/bash

# sudo apt install lua5.3

# fix some symlink bug
sudo update-alternatives --install /usr/bin/lua lua /usr/bin/lua5.3 10
