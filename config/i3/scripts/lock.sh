#!/usr/bin/env bash

maincolor=c646bbff
insidecolor=00000000

dpy=$(echo -n "$DISPLAY" | tr -c '[:alnum:]' _)
# Enable compton's fade-in effect so that the lockscreen gets a nice fade-in
# effect.
dbus-send --print-reply --dest=com.github.chjj.compton.${dpy} / \
    com.github.chjj.compton.opts_set string:no_fading_openclose boolean:false

killall -SIGUSR1 dunst # pause

# Suspend dunst and lock, then resume dunst when unlocked.
i3lock -n -i $HOME/Pictures/circle.jpg --tiling --indpos="x+85:y+130" \
    --clock --timecolor=ffffffff --timestr="%H:%M" --timepos="ix+50:iy+00" \
    --time-font=Roboto --timesize=54 --time-align=1 \
    --datecolor=ccccccff --datestr="%A, %d %B %Y" \
    --time-font=Roboto --datesize=20 --date-align=1 --datepos="ix+50:iy+40"  \
    --indicator --ring-width=5 --radius=10 \
    --insidecolor=$insidecolor --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=$maincolor --bshlcolor=$maincolor --separatorcolor=00000000 \
    --insidewrongcolor=$insidecolor \
    --insidevercolor=$insidecolor \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff \
    --veriftext="verifying..." --verifsize=20 --verifpos="ix+50:iy+7" \
    --verif-font=Roboto --verifcolor=ffffffff --verif-align=1 \
    --wrongtext="Wrong password." --wrongpos="ix+50:iy+7" \
    --wrong-font=Roboto --wrongcolor=$maincolor --wrongsize=20 --wrong-align=1 \
    --noinputtext="" \
    --ignore-empty-password 

killall -SIGUSR2 dunst #resume

# Revert compton's config changes.
sleep 0.2
dbus-send --print-reply --dest=com.github.chjj.compton.${dpy} / \
    com.github.chjj.compton.opts_set string:no_fading_openclose boolean:true
