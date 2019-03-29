#!/bin/sh

#landscape (normal)

xrandr -o normal
xinput set-prop "Wacom HID 4831 Finger" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
xinput set-prop "DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
