#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Performance\n\n"

# execute "gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2  && gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false" "Disable Indexing of files"