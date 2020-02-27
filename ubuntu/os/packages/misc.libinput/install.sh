#!/bin/bash

sudo gpasswd -a $USER input &&
sudo apt install wmctrl python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject &&
cd /tmp &&
git clone https://github.com/bulletmark/libinput-gestures.git &&
cd libinput-gestures &&
sudo make install &&
cd .. &&
libinput-gestures-setup autostart &&
git clone git@gitlab.com:cunidev/gestures.git &&
cd gestures &&
sudo python3 setup.py install
