#!/usr/bin/env bash

CACHE="${XDG_CACHE_HOME:-${HOME}/.cache}"
EWW="eww --config $(eww get EWW_CONFIG_DIR)"
WINDOWS=("tray" "fullscreen")

toggle() {
    local LOCK_FILE="$CACHE/eww-$1.lock"
    if [ -e $LOCK_FILE ]; then
        $EWW close $1
        $EWW update $1=false
        rm $LOCK_FILE
    else
        touch $LOCK_FILE
        $EWW close ${WINDOWS[*]}
        $EWW open $1
        $EWW update $1=true
    fi
}

toggle $1
