#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.
# This shell script is to toggle the network interface of enp3s0

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    nmcli networking off

else
    rm $TOGGLE
    nmcli networking on

fi