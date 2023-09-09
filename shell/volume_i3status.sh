#!/bin/bash

volume=$(pamixer --get-volume)
is_muted=$(pamixer --get-mute)

if [[ $is_muted == "true" ]]; then 
  echo "volume: muted"
else 
  echo "volume: $volume%"
fi
