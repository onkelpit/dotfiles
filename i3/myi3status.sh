#!/bin/bash

i3status -c /home/pit/.i3/i3status.conf | while :
do
    read line
    temp=$(</sys/bus/platform/devices/coretemp.0/hwmon/hwmon1/temp1_input)
    tempc=`bc <<< ${temp}'/1000'`
    echo " `echo $tempc`°C |  `cat /home/pit/.i3/.update_count` | `uname -r` | $line" || exit 1
done

