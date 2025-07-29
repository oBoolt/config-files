#!/usr/bin/env bash

ltray=$(eww get tray)
eww open --toggle tray
if $ltray; then
    eww close tray
    eww update tray='false';
else
    eww open tray
    eww update tray='true';
fi

