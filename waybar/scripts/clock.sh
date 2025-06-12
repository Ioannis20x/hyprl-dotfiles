#!/bin/bash

while true; do
  time=$(date "+%H:%M")
  tooltip=$(date "+%A, %d. %B %Y")
  echo "{\"text\":\"🕒 $time\", \"tooltip\":\"📅 $tooltip\"}"
  sleep 60
done
