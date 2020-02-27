#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

install_command "Chrome" "chrome-stable" "sh ./chrome/uninstall.sh"
install_command "cUrl" "curl" "sh ./curl/uninstall.sh"
install_command "Docker" "docker" "sh ./docker/uninstall.sh"
install_command "Franz" "franz" "sh ./franz/uninstall.sh"
install_command "gconf" "gconf2" "sh ./gconf/uninstall.sh"
install_command "Git" "git" "sh ./git/uninstall.sh"
install_command "Gnome Tweak Tool" "gnome-tweaks" "sh ./gnome-tweak-tool/uninstall.sh"
install_command "Kubectl" "kubectl" "sh ./kubectl/uninstall.sh"
install_command "Mega Sync" "mega-sync" "sh ./mega-sync/uninstall.sh"
install_command "Minikube" "minikube" "sh ./minikube/uninstall.sh"
install_command "Nvm" "nvm" "sh ./nvm/uninstall.sh"
install_command "Preload" "preload" "sh ./preload/uninstall.sh"
install_command "VLC" "vlc" "sh ./vlc/uninstall.sh"
install_command "Spotify" "spotify" "sh ./spotify/uninstall.sh"
install_command "TheFuck" "fuck" "sh ./thefuck/uninstall.sh"
install_command "VSCode" "code" "sh ./vscode/uninstall.sh"
install_command "VSCode Insiders" "code-insiders" "sh ./vscode-insiders/uninstall.sh"
install_command "xclip" "xclip" "sh ./xclip/uninstall.sh"

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
