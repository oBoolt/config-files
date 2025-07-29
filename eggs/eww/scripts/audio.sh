#!/usr/bin/env bash

if type pactl >/dev/null; then
    case "$1" in
        "--volume")
            wpctl get-volume @DEFAULT_SINK@ | cut -d " " -f2;
            pactl subscribe \
                | grep --line-buffered "Event 'change' on sink " \
                | while read -r evt;
                do wpctl get-volume @DEFAULT_SINK@ | cut -d " " -f2;
                done
            ;;
        "--muted")
            muted="$(wpctl get-volume @DEFAULT_SINK@ | cut -d " " -f3)"
            if [ -z $muted ]; then printf 'false\n'; else printf 'true\n'; fi
            pactl subscribe \
                | grep --line-buffered "Event 'change' on sink " \
                | while read -r evt;
            do if [ -z "$(wpctl get-volume @DEFAULT_SINK@ | cut -d " " -f3)" ]; then printf 'false\n'; else printf 'true\n'; fi
                done
            ;;
    esac
fi
