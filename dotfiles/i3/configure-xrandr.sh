#!/bin/bash -e

PRIMARY="DP2"
EXT="HDMI1"

if (xrandr | grep "$EXT connected"); then
    xrandr --output $PRIMARY --primary --auto --output $EXT --auto --right-of $PRIMARY
    echo "second screen enabled"
else
    xrandr --output $EXT --off
    xrandr --output $PRIMARY --primary --auto
    echo "second screen disabled"
fi
