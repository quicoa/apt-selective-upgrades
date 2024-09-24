#!/bin/bash

set -e

DIRNAME="$(dirname $(realpath ${0}))"
list="$(cat ${DIRNAME}/file)"

packages=$(cat ${list} | sed -E 's/\n/ /g')

sudo apt install --only-upgrade --no-download $@ ${packages}
