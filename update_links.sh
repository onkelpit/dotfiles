#!/usr/bin/env bash

if [[ ! $XDG_CONFIG_HOME ]]; then
    __CONFIG__=$HOME/.config/
else
    __CONFIG__=$XDG_CONFIG_HOME
fi

ln -s $(pwd)/git/ $__CONFIG__/git/
ln .s $(pwd)/i3/ $__CONFIG__/i3/
ln .s $(pwd)/i3lock/ $__CONFIG__/i3lock/
ln .s $(pwd)/i3status/ $__CONFIG__/i3status/
ln .s $(pwd)/nvim/ $__CONFIG__/nvim/
