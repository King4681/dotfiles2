#!/bin/bash

sudo apt install -y scala
wget https://dl.bintray.com/sbt/debian/sbt-1.2.8.deb
sudo apt install -y ./sbt*.deb
rm ./sbt*.deb
