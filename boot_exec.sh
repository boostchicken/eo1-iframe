#!/bin/bash

export DISPLAY=:0
echo "dimming..."
echo 1 | sudo tee /sys/class/backlight/backlight-pwm1/brightness

echo "cleaning up"
pkill chromium
pkill evince
pkill unclutter
pkill caffeinate
unclutter -idle 0.01 -root &
caffeinate sleep 172800 &

echo "sleeping..."
sleep 2

#echo "remove yesterday..."
#rm scan.pdf

#echo "download today..."
#/usr/bin/wget "https://static01.nyt.com/images/$(date +"%Y/%m/%d")/nytfrontpage/scan.pdf"

#/usr/bin/evince --fullscreen scan.pdf

echo "open fullscreen..."
chromium-browser \
      	-kiosk http://localserver.lan/

echo "done!"