#!/bin/bash

# Automatically uspends laptop when battery is below 25%
acpi > battery
battery_percent=`awk '{ print $4 }' battery`
length=`echo $battery_percent | wc -m`

if [ "$length" -eq 4 ] ; then
  if [[ "$length" -le 4 ]] ; then
    untyped_value=`echo $battery_percent | cut -c 1-2`
    int_value=$((untyped_value + 0))
  fi
fi

if [[ "$int_value" -le 100 ]] ; then
  notify-send "Battery below 25%. Going to suspend in the next 60 seconds"
  sleep 60 
  suspend &
fi
