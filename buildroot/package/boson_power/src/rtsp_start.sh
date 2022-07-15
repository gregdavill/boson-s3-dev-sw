#!/bin/bash

echo "$IFACE configured"

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


    echo "Starting rtsp & ffmpeg"
    rtspServer=169.254.1.2:rtsp://169.254.1.2:8554/stream rtsp_server /home/rtsp-config.yaml &
    sleep 2
    ffmpeg -f v4l2 -pix_fmt nv12 -framerate 30 -video_size 640x512 -i /dev/video0 -c:v cedrus264 -b:v 4M -f rtsp -rtsp_transport tcp rtsp://169.254.1.2:8554/stream &

    echo 0 > /sys/class/leds/led:pwr/brightness
    echo 1 > /sys/class/leds/led:usr/brightness

fi
exit 0
