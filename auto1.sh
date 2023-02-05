#!/bin/sh

COMMAND="$(ls | sed 's/\(.*\)\..*/\1/')"

for WEBSITE in $COMMAND
do
        ls /root/$WEBSITE
done
