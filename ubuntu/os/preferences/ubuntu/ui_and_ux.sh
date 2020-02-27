#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

# Enable minimize on click
execute "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'" "Enable minimize window on click"
# Set favorites
execute "dconf write /org/gnome/shell/favorite-apps \"['org.gnome.Nautilus.desktop', 'org.gnome.Software.desktop', 'firefox.desktop', 'spotify_spotify.desktop', 'code-insiders_code-insiders.desktop', 'code_code.desktop', 'org.gnome.Terminal.desktop']\"" "Set favorite apps"
# Disable lock screen
execute "gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend 'false'" "Disable Lockscreen"
# Disable lock screen
execute "gsettings set org.gnome.desktop.session idle-delay 0" "Disable screen lock"
# Disable desktop icons
execute "gsettings set org.gnome.desktop.background show-desktop-icons false" "Disable desktop icons"
# Disable animations
execute "gsettings set org.gnome.desktop.interface enable-animations false" "Disable Animations"
# Remove home icon from desktop
execute "gsettings set org.gnome.shell.extensions.desktop-icons show-home false" "Remove home icon from desktop"
# Remove trash icon from desktop
execute "gsettings set org.gnome.shell.extensions.desktop-icons show-trash false" "Remove trash icon from desktop"
# Remove dock transparency
execute "gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED' && gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1" "Remove Dock transparency"
# Custom top bar clock format
execute "gsettings set org.gnome.desktop.interface clock-show-date false && gsettings set org.gnome.desktop.interface clock-show-weekday true" "Custom top bar clock format"
