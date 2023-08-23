#!/bin/bash

for i in {248..255} ; do
  echo 0 > /sys/devices/system/cpu/cpu$i/online
done
