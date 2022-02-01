synology-ups-datadog
====================

This whole repo is because Im tired of fighting https://github.com/DataDog/integrations-core/issues/10899


TL;DR: 

* Hit SNMP for these values:
  * OID: .1.3.6.1.4.1.6574.4.3.1.1.0 (upsBatteryChargeValue)
  * OID: .1.3.6.1.4.1.6574.4.2.12.1 (upsInfoLoadValue)
  * OID: .1.3.6.1.4.1.6574.4.2.1 (upsInfoStatus)
* Submit them to datadog via zapier
