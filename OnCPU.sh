#!/bin/bash

for i in {240..255} ; do
  echo 1 > /sys/devices/system/cpu/cpu$i/online
done
