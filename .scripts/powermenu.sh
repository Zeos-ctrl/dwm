#!/bin/bash

function powermenu {
    options="Cancel\nShutdown\nRestart\nSleep\nLock"
    selected=$(echo -e $options | dmenu -fn 'JetBrainsMono Nerd Font Mono:size=15' -nb \#1D2021 -nf \#A89984 -sb \#427B58 -sf \#EBDBB2)
    if [[ $selected = "Shutdown" ]]; then
        poweroff
    elif [[ $selected = "Restart" ]]; then
        reboot
    elif [[ $selected = "Sleep" ]]; then
        systemctl suspend
    elif [[ $selected = "Lock" ]]; then
        slock
    elif [[ $selected = "Cancel" ]]; then
        return
    fi
}

powermenu
