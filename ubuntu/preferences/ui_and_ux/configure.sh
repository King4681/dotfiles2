#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

# Enable minimize on click
execute "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'" \
    "Enable minimize window on click"

# set favorites
execute "dconf write /org/gnome/shell/favorite-apps \"['org.gnome.Nautilus.desktop', 'org.gnome.Software.desktop', 'firefox.desktop', 'spotify_spotify.desktop', 'code-insiders_code-insiders.desktop', 'vscode_vscode.desktop', 'org.gnome.Terminal.desktop']\"" \
    "Set favorite apps"
# Disable lock screen
execute "gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend 'false'" \
    "Disable Lockscreen"
# Disable lock screen
execute "gsettings set org.gnome.desktop.session idle-delay 0" \
    "Disable screen lock"
# Disable desktop icons
execute "gsettings set org.gnome.desktop.background show-desktop-icons false" \
    "Disable desktop icons"
# custom indicator multiload settings
execute "sudo mv -f ./indicator-multiload-preferences-ui.xml /usr/share/indicator-multiload/preferences.ui" \
    "Custom Indicator multiload settings"
