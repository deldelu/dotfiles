#! /bin/bash

IP=$(ip addr show tun0 2> /dev/null | awk '/inet / {print $2}' | cut -d '/' -f 1)


if pgrep -x openvpn > /dev/null; then
    echo "  $IP"
else
    echo ""
fi

