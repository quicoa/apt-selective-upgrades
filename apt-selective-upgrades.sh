#!/bin/bash

list=/tmp/apt-upgradable.txt

apt list --upgradable | tail -n+2 | sed -E 's/^(.*)\/.+ .+ .+ \[.+\]$/\1/g' > ${list}

eval ${EDITOR} ${list}

packages=$(cat ${list} | sed -E 's/\n/ /g')

sudo apt install --only-upgrade $@ ${packages}
