#!/bin/bash
export SUNSHINE_PACKAGE_NAME=dev.lizardbyte.app.Sunshine
export DESKTOP_ENTRY_FILE=/home/deck/Desktop/SunshineDeck.desktop
flatpak install $SUNSHINE_PACKAGE_NAME
echo -e "[Desktop Entry]\nName=SunshineDeck\nExec=sudo -i PULSE_SERVER=unix:\$(pactl info | awk '/Server String/{print\$3}') flatpak run --socket=wayland $SUNSHINE_PACKAGE_NAME\nType=Application\nCategories=Utility\nTerminal=true\nIcon=/var/lib/flatpak/app/dev.lizardbyte.app.Sunshine/x86_64/stable/active/files/share/sunshine/web/images/sunshine-playing-45.png" > $DESKTOP_ENTRY_FILE
chmod +x $DESKTOP_ENTRY_FILE
