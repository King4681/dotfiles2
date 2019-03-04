#!/bin/bash

curl -s https://mega.nz/linux/MEGAsync/xUbuntu_18.10/amd64/megasync-xUbuntu_18.10_amd64.deb -o megasync.deb
sudo apt install -y ./megasync.deb
rm ./megasync.deb
