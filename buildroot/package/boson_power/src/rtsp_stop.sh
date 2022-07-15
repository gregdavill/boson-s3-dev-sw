#!/bin/bash

echo "$IFACE went down"

if [ "$IFACE" == "eth0" ];
then

    # Close down any existing rtsp_servers
    pid=`pidof rtsp_server`
    if [[ $pid != "" ]]; then
        echo "Killing existing rtsp_sever instance"
        kill -15 $pid
    fi

    pid=`pidof ffmpeg`
    if [[ $pid != "" ]]; then
        echo "Killing existing ffmpeg instance"
        kill -15 $pid
    fi

    echo 0 > /sys/class/leds/led:pwr/brightness
    echo 0 > /sys/class/leds/led:usr/brightness
fi

exit 0
