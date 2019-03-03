#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "gconf" "gconf2"
install_package "xclip" "xclip"
install_command "VSCode" "sudo snap install vscode --classic"
install_command "VSCode Insiders" "sudo snap install code-insiders --classic"
install_command "TheFuck" "sudo apt install python3-dev python3-pip python3-setuptools && sudo pip3 install thefuck"