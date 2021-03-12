#!/bin/bash

TMP=`mktemp`

echo "To stop, press ctrl-c or run the command:"
echo "rm $TMP"

while [[ -e $TMP ]]
do
    git add .
    git status --porcelain | sed -e 's/^M/Edit/g' -e 's/^A/Add/g' | git commit -aF -
    sleep 20
done
