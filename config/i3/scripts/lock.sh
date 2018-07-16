#!/usr/bin/env bash

maincolor=d52a5eff
insidecolor=000000aa

# Suspend dunst and lock, then resume dunst when unlocked.
i3lock -n -i $HOME/Pictures/cyberpunk.jpg --tiling \
    --clock --timecolor=ffffffff --timestr="%H:%M" --timepos="ix+0:iy+0" \
    --time-font=Hack --timesize=54 --time-align=0 \
    --datecolor=ccccccff --datestr="%d/%m/%Y" \
    --time-font=Hack --datesize=20 --date-align=0 --datepos="ix+0:iy+40"  \
    --indicator --ring-width=4 --radius=140 \
    --insidecolor=$insidecolor --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=$maincolor --bshlcolor=$maincolor --separatorcolor=00000000 \
    --insidewrongcolor=$insidecolor \
    --insidevercolor=$insidecolor \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff \
    --veriftext="verifying..." --verifsize=22 --verifpos="ix+0:iy+10" \
    --verif-font=Hack --verifcolor=ffffffff  \
    --wrongtext="ACCESS DENIED" --wrongpos="ix+0:iy+10" \
    --wrong-font=Hack --wrongcolor=c53341ff \
    --noinputtext="no input" \
    --ignore-empty-password 
