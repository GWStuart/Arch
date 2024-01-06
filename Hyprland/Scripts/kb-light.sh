#!/bin/bash

value=$(brightnessctl get -d *::kbd_backlight)
if [[ "$value" == "3" ]]; then
	echo "test"
	brightnessctl -d *::kbd_backlight set 0
else
	brightnessctl -d *::kbd_backlight set +33%
fi
