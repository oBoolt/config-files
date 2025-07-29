#!/usr/bin/env bash

ltray=$(eww get tray)
eww open --toggle tray
if $ltray; then
    eww update tray='false';
else
    eww update tray='true';
fi

