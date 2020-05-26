#!/bin/sh
TEMP_SENSORS=$(find /sys -iname '*temp' | grep virtual | grep -v trip)

for sensor in $TEMP_SENSORS;
do
	echo $sensor
  cat $sensor
done
