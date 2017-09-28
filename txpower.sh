#! /bin/bash
# To view current registration use:
# iw reg get

# configuration
interface=wlan1
power=30 #dBm

# end of config

echo "Changing Power at $interface..."

#We need to turn off every wlan interface, so if you got more, add them:
ifconfig wlan0 down
ifconfig wlan1 down

sleep 1
iw reg set BZ
iwconfig $interface txpower $power
ifconfig $interface up
sleep 1

#Now we detect if power of our interface was setup up to ours
if iwconfig $interface| grep "$power dBm"
then
echo "Power of $interface changed and set to $power!"
else echo "Power of $interface not changed!"
fi
