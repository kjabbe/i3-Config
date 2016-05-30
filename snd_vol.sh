#!/bin/bash

PRCNT="$(amixer get Master | egrep -m 1 -o "[0-9]+%" | sed 's/%//')"

if [ -z "$PRCNT" ]; then
	PRCNT="??"
fi

if amixer -c 1 sget Master | grep -q off; then
	echo -e "  $PRCNT%\n\n"
else
	echo -e "  $PRCNT%\n\n"
fi
