#!/bin/sh
#ᛒ
case $BUTTON in
    1) [ ! "$(pgrep -x blueman-manager)" ] && ( blueman-applet && blueman-manager ) || pkill "blueman-manager" ;;
esac

[ -e "/sys/class/bluetooth/hci0" ] && icon="β" || icon="ϴ"
echo "][ $icon "




