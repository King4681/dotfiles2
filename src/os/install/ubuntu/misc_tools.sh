#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "gconf" "gconf2"
install_package "xclip" "xclip"
install_command "VSCode" "sudo snap install code --classic"
install_command "VSCode Insiders" "sudo snap install code-insiders --classic"
