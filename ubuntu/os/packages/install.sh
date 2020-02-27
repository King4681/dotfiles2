#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_command() {
    declare -r COMMAND="$3"
    declare -r PACKAGE="$2"
    declare -r PACKAGE_READABLE_NAME="$1"

    if ! command_exists "$PACKAGE"; then
        execute "$COMMAND" "$PACKAGE_READABLE_NAME"
    else
        print_success "(already installed) $PACKAGE_READABLE_NAME"
    fi

}

command_exists(){
  command -v "$1" &> /dev/null
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n\n"
install_command "Chrome" "google-chrome" "sh ./browser.chrome/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dev\n\n"

install_command "cUrl" "curl" "sh ./dev.curl/install.sh"
# install_command "Docker" "docker" "sh ./dev.docker/install.sh"
install_command "Git" "git" "sh ./dev.git/install.sh"
# install_command "Kubectl" "kubectl" "sh ./dev.kubectl/install.sh"
# install_command "Minikube" "minikube" "sh ./dev.minikube/install.sh"
install_command "Nvm" "nvm" "sh ./dev.nvm/install.sh"
# install_command "Virtual Box" "nvm" "sh ./dev.virtualbox/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Editors\n\n"

# install_command "Atom" "atom" "sh ./editor.atom/install.sh"
# install_command "Brackets" "atom" "sh ./editor.brackets/install.sh"
install_command "VSCode" "code" "sh ./editor.vscode/install.sh"
install_command "VSCode Insiders" "code-insiders" "sh ./editor.vscode-insiders/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Languages\n\n"

# install_command "Lua" "lua" "sh ./lang.lua/install.sh"
# install_command "Scala" "scala" "sh ./lang.scala/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

# install_command "Franz" "franz" "sh ./misc.franz/install.sh"
# install_command "Libre Office" "libre-office" "sh ./misc.libreoffice/install.sh"
# install_command "Mega Sync" "megasync" "sh ./misc.mega-sync/install.sh"
# install_command "Spotify" "spotify" "sh ./misc.spotify/install.sh"
install_command "VLC" "vlc" "sh ./misc.vlc/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Tweak\n\n"

install_command "Gnome Tweak Tool" "gnome-tweaks" "sh ./tweak.gnome-tweak-tool/install.sh"
# install_command "Indicator Multiload" "indicator-multiload" "sh ./tweak.indicator-multiload/install.sh"
install_command "Preload" "preload" "sh ./tweak.preload/install.sh"
install_command "TheFuck" "fuck" "sh ./tweak.thefuck/install.sh"
install_command "Z" "z" "sh ./tweak.z/install.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Cleanup\n\n"
execute "sudo apt-get autoremove -qqy" "Autoremove"
