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
execute "dconf write /org/gnome/shell/favorite-apps \"['org.gnome.Nautilus.desktop', 'org.gnome.Software.desktop', 'firefox.desktop', 'spotify_spotify.desktop', 'code-insiders_code-insiders.desktop', 'vscode_vscode.desktop', 'org.gnome.Terminal.desktop']\"" \
    "Set favorite apps"
execute "gsettings set org.gnome.desktop.session idle-delay 0" \
    "Disable screen lock"
execute "gsettings set org.gnome.desktop.background show-desktop-icons false" \
    "Disable desktop icons"
execute "mv -f ~/projects/dotfiles/src/os/preferences/ubuntu/indicator-multiload-preferences-ui.xml /usr/share/Indicator-multiload/preferences.ui" \
    "Custom Indicator multiload settings"
# execute "gsettings set com.canonical.Unity.Launcher favorites \"[
#             'ubiquity-gtkui.desktop',
#             'nautilus-home.desktop'
#          ]\"" \
#     "Set Launcher favorites"
