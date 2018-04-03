# kdblight-laptop
Manipulate keyboard backlight on Lenovo T460s with i3wm

i3-config
# Keyboard backlight controls
``` 
 bindsym XF86LaunchA exec /home/dfb/scripts/bash/kdb-light/kdblight-on.sh
 bindsym XF86Explorer exec /home/dfb/scripts/bash/kdb-light/kdblight-off.sh
```

Make sure to chmod the file (646):
```
chmod 646 /sys/class/leds/tpacpi\:\:kbd_backlight/brightness
```
And make the two shell scripts executable with:
``` 
 chmod +x kdblight-off.sh
```
