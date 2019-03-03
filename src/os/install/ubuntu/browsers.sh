#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

if ! command_exists "google-chrome"; then

    add_key "https://dl-ssl.google.com/linux/linux_signing_key.pub" \
        || print_error "Chrome (add key)"

    add_to_source_list "[arch=amd64] https://dl.google.com/linux/deb/ stable main" "google-chrome.list" \
        || print_error "Chrome (add to package resource list)"

    update &> /dev/null \
        || print_error "Chrome (resync package index files)"

fi

install_package "Chrome" "google-chrome"