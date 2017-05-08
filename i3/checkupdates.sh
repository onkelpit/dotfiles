#!/bin/bash

COMMAND=$(checkupdates | wc -l)

if [ $COMMAND -eq 0 ]; then
    echo 0 > /home/pit/.config/i3/.update_count
else
    echo $COMMAND > /home/pit/.config/i3/.update_count
fi
