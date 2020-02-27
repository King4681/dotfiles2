#!/bin/bash

sudo snap install code --classic

if code --list-extensions &>/dev/null; then
    code --install-extension Shan.code-settings-sync
    echo "{ \"sync.gist\": \"8326ca592e1060d63a2b6d6d721fc3e7\",\"sync.autoDownload\": true}" >~/.config/Code/User/settings.json
fi
