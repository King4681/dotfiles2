#!/bin/bash

curl -s https://mega.nz/linux/MEGAsync/xUbuntu_19.04/amd64/megasync-xUbuntu_19.04_amd64.deb -o megasync.deb
sudo apt install -y ./megasync.deb
rm ./megasync.deb
