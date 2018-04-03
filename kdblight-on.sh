#!/bin/sh

while read line; do
    if [[ $line == "2" ]]; then
        exit 0
    elif [[ $line == "0" ]]; then
        echo 1 | tee /sys/class/leds/tpacpi\:\:kbd_backlight/brightness 1> /dev/null
    else
        echo 2 | tee /sys/class/leds/tpacpi\:\:kbd_backlight/brightness 1> /dev/null
fi
done < /sys/class/leds/tpacpi\:\:kbd_backlight/brightness
