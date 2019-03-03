#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "gconf" "gconf2"
install_package "xclip" "xclip"
install_command "Indicator multiload" "indicator-multiload" "sudo apt install -y indicator-multiload && mv -f ~/projects/dotfiles/src/os/install/ubuntu/indicator-multiload-preferences-ui /usr/share/Indicator-multiload/preferences.ui"
install_command "VSCode" "code" "sudo snap install vscode --classic"
install_command "VSCode Insiders" "code-insiders" "sudo snap install code-insiders --classic"
install_command "TheFuck" "fuck" "sudo apt install python3-dev python3-pip python3-setuptools && sudo pip3 install thefuck"
install_command "Gnome tweak tool" "gnome-tweaks" "sudo apt install -y gnome-tweak-tool"
install_command "Preload" "preload" "sudo apt install -y preload"