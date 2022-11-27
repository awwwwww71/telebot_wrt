#!/bin/sh

# obsy, http://eko.one.pl

temp="$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)"
temp=$(($temp/1000))
degree="$(echo $'\xc2\xb0'C)"

printf "  %-"$LINE"s \n" "Temperature: $temp$degree"

exit 0

#credit to https://pulpstone.pw