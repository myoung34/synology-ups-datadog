#!/bin/sh
upsBatteryRuntimeValue=$(snmpwalk -v 2c -c home 192.168.3.2 .1.3.6.1.4.1.6574.4.3.6.1 | awk '{print $4}')
upsBatteryChargeValue=$(snmpwalk -v 2c -c home 192.168.3.2 .1.3.6.1.4.1.6574.4.3.1.1.0 | awk '{print $5}')
upsInfoLoadValue=$(snmpwalk -v 2c -c home 192.168.3.2 .1.3.6.1.4.1.6574.4.2.12.1 | awk '{print $5}')
upsInfoStatus=$(snmpwalk -v 2c -c home 192.168.3.2 .1.3.6.1.4.1.6574.4.2.1 | awk '{print $4}' | sed 's/"//g')
curl -XPOST -H "Content-Type: application/json" $HOOK_URL -d "{\"upsBatteryRuntimeValue\": \"$upsBatteryRuntimeValue\", \"upsBatteryChargeValue\": \"$upsBatteryChargeValue\", \"upsInfoLoadValue\": \"$upsInfoLoadValue\", \"upsInfoStatus\": \"$upsInfoStatus\"}"
