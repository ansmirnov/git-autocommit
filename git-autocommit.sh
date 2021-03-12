#!/bin/bash

TMP=`mktemp`

echo "For stop run"
echo "rm $TMP"

while [[ -e $TMP ]]
do
    git add .
    git status --porcelain | sed -e 's/^M/Edit/g' -e 's/^A/Add/g' | git commit -aF -
    sleep 20
done
