#!/usr/bin/env bash
if [ -z $TMUX ]; then
    tmux new-session -A -s d
fi
