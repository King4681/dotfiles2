#!/bin/bash
clear

# install node version manager (nvm)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
source ~/.nvm/nvm.sh

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
npm i -g @vue/cli http-server
echo 'finished'
