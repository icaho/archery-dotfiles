#!/bin/bash

VPN=`nmcli c show --active | grep vpn | awk '{print $1}' | sed -e "s/^/< /; s/*$//; s/$/ >/"`

echo -e $VPN

