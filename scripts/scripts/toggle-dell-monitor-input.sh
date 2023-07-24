#!/usr/bin/env bash

if ddcutil getvcp --display $1 60 | grep -q HDMI; then
  ddcutil setvcp --display $1 60 0x0f
else
  ddcutil setvcp --display $1 60 0x11
fi
