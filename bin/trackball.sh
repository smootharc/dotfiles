#!/bin/sh
#Use xinput list to determine the device number. The number immediately after set-prop is the device number.
xinput set-prop 8 "Evdev Wheel Emulation" 1
xinput set-prop 8 "Evdev Wheel Emulation Button" 8
