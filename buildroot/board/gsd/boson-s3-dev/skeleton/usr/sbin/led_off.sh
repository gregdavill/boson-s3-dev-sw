#!/bin/sh

echo 1 > /sys/class/leds/led:usr/brightness 
echo 0 > /sys/class/leds/led:pwr/brightness 

echo 1 > /sys/class/leds/boson:en/brightness 
echo 1 > /sys/class/leds/boson:rst/brightness
