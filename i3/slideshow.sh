#!/bin/bash

BASEPATH="/home/pit/Bilder/backgrounds/"
IMAGE=$(find ${BASEPATH} -printf '%P\n'  | sort -R | head -n1)

WALLPAPER="${BASEPATH}/${IMAGE}"

feh --bg-scale "${WALLPAPER}"
