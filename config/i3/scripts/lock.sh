#!/usr/bin/env bash

# Suspend dunst and lock, then resume dunst when unlocked.
i3lock -n -i $HOME/Pictures/galaxy.jpg --tiling \
    --ring-width=2 \
    --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=8c1f3dff --bshlcolor=8c1f3dff --separatorcolor=00000000 \
    --insidevercolor=8c1f3dff \
    --insidewrongcolor=d23c3dff \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff \
    --indpos="x+150:y+980" \
    --radius=15 --veriftext="" --wrongtext="" --noinputtext="" --indicator \
    --ignore-empty-password \
    --clock --timecolor=ffffffff --timestr="%H:%M" --timepos="x+200:y+980" \
    --timesize=30 --time-align=1 \
    --datecolor=ffffffff --datestr="%A, %d %B" --datepos="x+200:y+1000" \
    --datesize=16 --date-align=1
