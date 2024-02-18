#!/bin/bash

list=/tmp/apt-upgradable.txt

packages=$(cat ${list} | sed -E 's/\n/ /g')

sudo apt install --only-upgrade --no-download $@ ${packages}
