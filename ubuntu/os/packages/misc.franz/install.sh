#!/bin/bash

curl -s https://github.com/meetfranz/franz/releases/download/v5.0.0/franz_5.0.0_amd64.deb -o franz.deb
sudo apt install -y ./franz.deb
rm ./franz.deb
# custom options
echo {\"autoLaunchInBackground\":false,\"runInBackground\":false,\"enableSystemTray\":false,\"minimizeToSystemTray\":false,\"showDisabledServices\":false,\"showMessageBadgeWhenMuted\":false,\"enableSpellchecking\":true,\"spellcheckerLanguage\":\"en-us\",\"darkMode\":false,\"locale\":\"en-US\",\"fallbackLocale\":\"en-US\",\"beta\":false,\"isAppMuted\":false,\"enableGPUAcceleration\":true,\"serviceLimit\":5} > ~/.config/Franz/settings.json"
