#!/usr/bin/env bash

MONITOR_INFO=$(ddcutil capabilities --brief --display "$1")

if grep -q "S3219D" <<< "$MONITOR_INFO"; then
  if ddcutil getvcp --display $1 60 | grep -q HDMI; then
    ddcutil setvcp --display $1 60 0x0f
  else
    ddcutil setvcp --display $1 60 0x11
  fi
else
  echo "Invalid Monitor"
fi

