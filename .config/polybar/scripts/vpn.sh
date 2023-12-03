#!/bin/bash

VPN=`nmcli c show --active | grep vpn | awk '{print $1}' | sed -e "s/^/< /; s/*$//; s/$/ >/"`
TUN=`nmcli c show --active | grep tun | awk '{print $1}' | sed -e "s/^/< /; s/*$//; s/$/ >/"`


if [ -z "$VPN" ] && [ -n "$TUN" ]; then
    echo -e "AWS Client VPN"
else
    echo -e $VPN
fi

