# eo1-iframe
Bad replica of the Electric Object 1's loop-playlist, using GIFs.

How to configure EO1 frame running Boundary Ubuntu to use this frame:
1. Host eo1_frame.html on your local network
2. Add the following to the EO1 crontab:
```bash
# m h  dom mon dow   command
# refresh every morning
0 6 * * * /bin/bash /home/ubuntu/eo1-iframe/boot_exec.bash &
# fully dim backlight at 11pm at night
0 23 * * * echo 0 | sudo tee /sys/class/backlight/backlight-pwm1/brightness
```

References:
- https://www.charlieharrington.com/run-linux-on-electric-objects-eo1-wall-computer/
- https://www.reddit.com/r/electricobjects/comments/14mfxdq/wanted_to_share_with_everyone_here/