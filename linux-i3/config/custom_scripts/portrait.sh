#!/bin/sh

#portrait (left)

# output
xrandr -o left

# touchscreen
xinput set-prop \
				"Wacom HID 4831 Finger" \
				--type=float \
				"Coordinate Transformation Matrix" \
				0 -1 1 1 0 0 0 0 1

# touchpad
xinput set-prop "DLL077A:01 06CB:76AF Touchpad" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
