#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

install_command "Chrome" "chrome-stable" "sh ./chrome/install.sh"
install_command "Franz" "franz" "sh ./franz/install.sh"
install_command "Git" "git" "sh ./git/install.sh"
install_command "Kubectl" "kubectl" "sh ./kubectl/install.sh"
install_command "Mega Sync" "mega-sync" "sh ./mega-sync/install.sh"
install_command "Minikube" "minikube" "sh ./minikube/install.sh"
install_command "Nvm" "nvm" "sh ./nvm/install.sh"
install_command "VLC" "vlc" "sh ./vlc/install.sh"
install_command "Spotify" "spotify" "sh ./spotify/install.sh"
install_command "VSCode" "code" "sh ./vscode/install.sh"
install_command "VSCode Insiders" "code-insiders" "sh ./vscode-insiders/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Cleanup\n\n"
autoremove

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_command() {
    declare -r COMMAND="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    if ! command_exists "$PACKAGE"; then
        execute "$COMMAND" "$PACKAGE_READABLE_NAME"
    else
        print_success "$PACKAGE_READABLE_NAME"
    fi

}

command_exists(){
  command -v "$1" &> /dev/null
}
