#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

execute "gsettings set org.gnome.libgnomekbd.keyboard layouts \"[ 'us', 'ro' ]\"" \
    "Set keyboard languages"
execute "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'" \
    "Enable minimize window on click"
execute "gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend 'false'" \
    "Disable Lockscreen"
# execute "gsettings set com.canonical.Unity.Launcher favorites \"[
#             'ubiquity-gtkui.desktop',
#             'nautilus-home.desktop'
#          ]\"" \
#     "Set Launcher favorites"
