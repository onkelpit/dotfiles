#!/bin/bash

COMMAND=$(checkupdates | wc -l)

if [ $COMMAND -eq 0 ]; then
    rm -rf .update_count
else
    echo $COMMAND > .update_count
fi
