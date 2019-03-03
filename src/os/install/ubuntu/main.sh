#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./../nvm.sh

./browsers.sh
./git.sh
./misc.sh
./misc_tools.sh
./../npm.sh

./cleanup.sh
