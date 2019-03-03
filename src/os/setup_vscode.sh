#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

setup_vscode() {
    if code --list-extensions &> /dev/null; then
      code --install-extension Shan.code-settings-sync 
      echo "{ \"sync.gist\": \"8326ca592e1060d63a2b6d6d721fc3e7\",\"sync.autoDownload\": true,}\"" > /home/simon/.config/Code/User/settings.json
    fi
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

setup_vscode_insiders() {
    if code-insiders --list-extensions &> /dev/null; then
      code-insiders --install-extension Shan.code-settings-sync 
      echo "{ \"sync.gist\": \"8326ca592e1060d63a2b6d6d721fc3e7\",\"sync.autoDownload\": true,}\"" > /home/simon/.config/Code-Insiders/User/settings.json

    fi
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n Setup VSCode\n\n"
    setup_vscode
    setup_vscode_insiders
}

main
