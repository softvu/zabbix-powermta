#!/usr/bin/env bash

# Dump vmta list out as JSON formatted for discovery with Zabbix

VMTAS=$(pmta show vmtas | tail -n +3 | head -n -2 | awk ' {print "{ \"{#VMTA}\": " "\""$1"\" },"  }' | sed '$ s/,$//')

echo "{ \"data\": [ $VMTAS ] }"
