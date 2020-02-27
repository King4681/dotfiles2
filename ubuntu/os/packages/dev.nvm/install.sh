#!/bin/bash
clear

# install node version manager (nvm)

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source ~/.nvm/nvm.sh
clear

echo 'almost done'
nvm install node
nvm alias default node
if [ -e '/usr/bin/node' ]; then
echo 'File exists'
sudo rm /usr/bin/node
else
echo 'File does not exist'
fi
sudo ln -s `which node` /usr/bin/node
clear

# enable long caching
npm config set cache-min 9999999
echo 'finished installing node'
echo 'now installing packages...'

# install useful npm packages
npm i -g @vue/cli
echo 'finished'
