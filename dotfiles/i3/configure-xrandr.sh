#!/bin/bash -e

# home setup
#PRIMARY="DP2"
#EXT="HDMI1"

# work setup
PRIMARY="HDMI1"
EXT="HDMI2"

if (xrandr | grep "$EXT connected"); then
    xrandr --output $PRIMARY --primary --auto --output $EXT --auto --right-of $PRIMARY
    echo "second screen enabled"
else
    xrandr --output $EXT --off
    xrandr --output $PRIMARY --primary --auto
    echo "second screen disabled"
fi
